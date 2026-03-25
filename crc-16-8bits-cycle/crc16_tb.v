`default_nettype none
`timescale 1ns/1ps
 
// =============================================================================
// Testbench : tb_crc_parallel
// DUT       : crc_parallel (fully-parallel CRC-16-CCITT engine)
// Engineer  : Senior DV — SystemVerilog self-checking testbench
//
// Test plan
// ---------
//  T0  Reset & seed integrity
//  T1  Directed: ASCII "123456789" => known CRC 0x29B1
//  T2  Directed: all-zeros / all-ones / walking-ones byte streams
//  T3  Constrained-random back-to-back byte streams (no gaps)
//  T4  SPI inter-byte gaps — en toggled randomly mid-stream
//  T5  Multi-frame: clear between frames, random frame length
//  T6  Hold check — register must not change when en=0 and clear=0
//  T7  Clear during active computation — immediate seed reload
//
// Scoreboard tracks every DUT vs. golden-model comparison.
// Final PASS/FAIL banner printed at $finish.
// =============================================================================
 
module tb_crc_parallel;
 
    // =========================================================================
    // Parameters — mirror the DUT defaults; change here to re-target
    // =========================================================================
    localparam int  DATA_WIDTH = 8;
    localparam int  CRC_WIDTH  = 16;
    localparam logic [CRC_WIDTH-1:0] POLY     = 16'h1021;
    localparam logic [CRC_WIDTH-1:0] INIT_VAL = 16'hFFFF;
 
    localparam real CLK_PERIOD_NS = 10.0;   // 100 MHz
 
    // =========================================================================
    // DUT interface signals
    // =========================================================================
    logic                       clk;
    logic                       rst_n;
    logic                       clear;
    logic                       en;
    logic [DATA_WIDTH-1:0]      data_in;
    logic [CRC_WIDTH-1:0]       crc_out;
 
    // =========================================================================
    // DUT instantiation
    // =========================================================================
    crc_parallel #(
        .DATA_WIDTH (DATA_WIDTH),
        .CRC_WIDTH  (CRC_WIDTH),
        .POLY       (POLY),
        .INIT_VAL   (INIT_VAL)
    ) dut (
        .clk     (clk),
        .rst_n   (rst_n),
        .clear   (clear),
        .en      (en),
        .data_in (data_in),
        .crc_out (crc_out)
    );
 
    // =========================================================================
    // Clock generator
    // =========================================================================
    initial clk = 1'b0;
    always #(CLK_PERIOD_NS/2) clk = ~clk;
 
    // =========================================================================
    // Scoreboard
    // =========================================================================
    int unsigned total_checks;
    int unsigned pass_count;
    int unsigned fail_count;
 
    // Called after every byte is clocked in — compares DUT to golden model.
    task automatic check(
        input logic [CRC_WIDTH-1:0] expected,
        input string                context_str
    );
        total_checks++;
        if (crc_out === expected) begin
            pass_count++;
          $display("  [PASS] %-40s | DUT=0x%04X  REF=0x%04X",
                     context_str, crc_out, expected);
        end else begin
            fail_count++;
            $display("  [FAIL] %-40s | DUT=0x%04X  REF=0x%04X  <-- MISMATCH",
                     context_str, crc_out, expected);
        end
    endtask
 
    // =========================================================================
    // Golden Reference Model
    // Implements the identical bit-serial CRC recurrence as the original RTL
    // description, seeded externally so it can be reused across test cases.
    //
    //   for i = DATA_WIDTH-1 downto 0:
    //     feedback = crc[CRC_WIDTH-1] XOR data[i]
    //     crc = (crc << 1) XOR (feedback ? POLY : 0)
    // =========================================================================
    function automatic logic [CRC_WIDTH-1:0] golden_crc_byte(
        input logic [CRC_WIDTH-1:0]  crc_in,
        input logic [DATA_WIDTH-1:0] data
    );
        logic [CRC_WIDTH-1:0] crc;
        logic                 fb;
        begin
            crc = crc_in;
            for (int i = DATA_WIDTH-1; i >= 0; i--) begin
                fb  = crc[CRC_WIDTH-1] ^ data[i];
                crc = (crc << 1) ^ (fb ? POLY : '0);
            end
            return crc;
        end
    endfunction
 
    // Compute CRC over an entire byte array, starting from seed.
    function automatic logic [CRC_WIDTH-1:0] golden_crc_stream(
        input logic [DATA_WIDTH-1:0] stream [],
        input logic [CRC_WIDTH-1:0]  seed
    );
        logic [CRC_WIDTH-1:0] crc;
        begin
            crc = seed;
            foreach (stream[i])
                crc = golden_crc_byte(crc, stream[i]);
            return crc;
        end
    endfunction
 
    // =========================================================================
    // Low-level driver tasks
    // =========================================================================
 
    // Apply asynchronous reset for 3 clock cycles.
    task automatic apply_reset();
        rst_n   = 1'b0;
        clear   = 1'b0;
        en      = 1'b0;
        data_in = '0;
        repeat(3) @(posedge clk);
        #1;
        rst_n = 1'b1;
        @(posedge clk); #1;
    endtask
 
    // Drive one byte into the DUT, optionally stalling with en=0 before
    // the real enable pulse (simulates SPI inter-byte gap).
    task automatic drive_byte(
        input logic [DATA_WIDTH-1:0] byte_val,
        input int                    stall_cycles   // 0 = no gap
    );
        // Optional inter-byte gap: keep en low for stall_cycles.
        if (stall_cycles > 0) begin
            data_in = byte_val;
            en      = 1'b0;
            repeat(stall_cycles) @(posedge clk); #1;
        end
        // Assert enable for exactly one cycle.
        data_in = byte_val;
        en      = 1'b1;
        @(posedge clk); #1;
        en = 1'b0;
    endtask
 
    // Issue a synchronous clear and verify the seed is reloaded.
    task automatic do_clear(input string ctx);
        clear = 1'b1;
        en    = 1'b0;
        @(posedge clk); #1;
        clear = 1'b0;
        check(INIT_VAL, ctx);
    endtask
 
    // =========================================================================
    // T0 — Reset & seed integrity
    // =========================================================================
    task automatic test_reset();
        $display("\n[T0] Reset & seed integrity");
        apply_reset();
        check(INIT_VAL, "After async reset");
 
        // Corrupt the state then re-apply reset mid-stream.
        en = 1'b1; data_in = 8'hA5;
        @(posedge clk); #1;
        en = 1'b0;
        rst_n = 1'b0;
        @(posedge clk); #1;
        rst_n = 1'b1;
        @(posedge clk); #1;
        check(INIT_VAL, "Re-reset after activity");
    endtask
 
    // =========================================================================
    // T1 — Directed: "123456789" => 0x29B1
    // =========================================================================
    task automatic test_directed_known_vector();
        localparam logic [CRC_WIDTH-1:0] EXPECTED_29B1 = 16'h29B1;
        logic [DATA_WIDTH-1:0] vec [];
        logic [CRC_WIDTH-1:0]  ref_crc;
 
        $display("\n[T1] Directed: ASCII \"123456789\" => 0x29B1");
        apply_reset();
 
        vec = new[9];
        vec = '{ 8'h31, 8'h32, 8'h33, 8'h34, 8'h35,
                 8'h36, 8'h37, 8'h38, 8'h39 };
 
        ref_crc = INIT_VAL;
        foreach (vec[i]) begin
            drive_byte(vec[i], 0);
            ref_crc = golden_crc_byte(ref_crc, vec[i]);
        end
        check(EXPECTED_29B1, "\"123456789\" final CRC");
        check(ref_crc,       "Golden model agrees");
    endtask
 
    // =========================================================================
    // T2 — Directed: corner-case data patterns
    // =========================================================================
    task automatic test_directed_patterns();
        logic [DATA_WIDTH-1:0] stream [];
        logic [CRC_WIDTH-1:0]  ref_crc;
        string                 tag;
        int                    len;
 
        $display("\n[T2] Directed: corner-case patterns");
 
        // --- All-zeros (16 bytes) ---
        len    = 16;
        stream = new[len];
        foreach (stream[i]) stream[i] = 8'h00;
        tag    = "All-zeros (16 bytes)";
 
        apply_reset();
        ref_crc = INIT_VAL;
        foreach (stream[i]) begin
            drive_byte(stream[i], 0);
            ref_crc = golden_crc_byte(ref_crc, stream[i]);
        end
        check(ref_crc, tag);
 
        // --- All-ones (16 bytes) ---
        foreach (stream[i]) stream[i] = 8'hFF;
        tag = "All-ones  (16 bytes)";
 
        apply_reset();
        ref_crc = INIT_VAL;
        foreach (stream[i]) begin
            drive_byte(stream[i], 0);
            ref_crc = golden_crc_byte(ref_crc, stream[i]);
        end
        check(ref_crc, tag);
 
        // --- Walking ones (8 bytes: 0x01, 0x02, 0x04 … 0x80) ---
        stream = new[8];
        foreach (stream[i]) stream[i] = logic'(1 << i);
        tag = "Walking ones (8 bytes)";
 
        apply_reset();
        ref_crc = INIT_VAL;
        foreach (stream[i]) begin
            drive_byte(stream[i], 0);
            ref_crc = golden_crc_byte(ref_crc, stream[i]);
        end
        check(ref_crc, tag);
 
        // --- Alternating 0xAA / 0x55 (16 bytes) ---
        stream = new[16];
        foreach (stream[i]) stream[i] = (i % 2 == 0) ? 8'hAA : 8'h55;
        tag = "Alternating AA/55 (16 bytes)";
 
        apply_reset();
        ref_crc = INIT_VAL;
        foreach (stream[i]) begin
            drive_byte(stream[i], 0);
            ref_crc = golden_crc_byte(ref_crc, stream[i]);
        end
        check(ref_crc, tag);
    endtask
 
    // =========================================================================
    // T3 — Constrained-random: back-to-back byte streams
    // =========================================================================
    task automatic test_random_streams(
        input int num_frames,
        input int max_frame_len
    );
        logic [DATA_WIDTH-1:0] stream [];
        logic [CRC_WIDTH-1:0]  ref_crc;
        int                    frame_len;
        string                 tag;
 
        $display("\n[T3] Constrained-random: %0d frames, max %0d bytes/frame",
                 num_frames, max_frame_len);
 
        for (int f = 0; f < num_frames; f++) begin
            frame_len = $urandom_range(1, max_frame_len);
            stream    = new[frame_len];
 
            // Fill with unconstrained random bytes.
            foreach (stream[i]) stream[i] = $urandom() & 8'hFF;
 
            apply_reset();
            ref_crc = INIT_VAL;
            foreach (stream[i]) begin
                drive_byte(stream[i], 0);
                ref_crc = golden_crc_byte(ref_crc, stream[i]);
            end
            $sformat(tag, "Random frame %0d (%0d bytes)", f, frame_len);
            check(ref_crc, tag);
        end
    endtask
 
    // =========================================================================
    // T4 — SPI inter-byte gaps: random en stalling
    // =========================================================================
    task automatic test_spi_gaps(
        input int num_frames,
        input int max_frame_len,
        input int max_gap_cycles
    );
        logic [DATA_WIDTH-1:0] stream [];
        logic [CRC_WIDTH-1:0]  ref_crc;
        int                    frame_len, gap;
        string                 tag;
 
        $display("\n[T4] SPI inter-byte gaps: %0d frames, max gap=%0d cycles",
                 num_frames, max_gap_cycles);
 
        for (int f = 0; f < num_frames; f++) begin
            frame_len = $urandom_range(2, max_frame_len);
            stream    = new[frame_len];
            foreach (stream[i]) stream[i] = $urandom() & 8'hFF;
 
            apply_reset();
            ref_crc = INIT_VAL;
 
            foreach (stream[i]) begin
                // Random gap before this byte (0 = no gap, mimics fast SPI).
                gap = $urandom_range(0, max_gap_cycles);
                drive_byte(stream[i], gap);
                ref_crc = golden_crc_byte(ref_crc, stream[i]);
 
                // Verify register is stable during any trailing idle cycle.
                if (gap > 0) begin
                    logic [CRC_WIDTH-1:0] snapshot;
                    snapshot = crc_out;
                    en = 1'b0; data_in = $urandom();
                    repeat(2) @(posedge clk); #1;
                    if (crc_out !== snapshot) begin
                        fail_count++;
                        $display("  [FAIL] Hold check mid-gap: was 0x%04X, now 0x%04X",
                                 snapshot, crc_out);
                    end
                end
            end
            $sformat(tag, "SPI-gap frame %0d (%0d bytes)", f, frame_len);
            check(ref_crc, tag);
        end
    endtask
 
    // =========================================================================
    // T5 — Multi-frame: clear between frames, verify seed reload
    // =========================================================================
    task automatic test_multi_frame(
        input int num_frames,
        input int max_frame_len
    );
        logic [DATA_WIDTH-1:0] stream [];
        logic [CRC_WIDTH-1:0]  ref_crc;
        int                    frame_len;
        string                 tag;
 
        $display("\n[T5] Multi-frame with clear: %0d frames", num_frames);
        apply_reset();
 
        for (int f = 0; f < num_frames; f++) begin
            // Assert clear at the start of every frame (frame 0 also re-clears
            // after reset, which is benign and explicitly tested in T0).
            do_clear($sformatf("Clear before frame %0d", f));
 
            frame_len = $urandom_range(1, max_frame_len);
            stream    = new[frame_len];
            foreach (stream[i]) stream[i] = $urandom() & 8'hFF;
 
            ref_crc = INIT_VAL;
            foreach (stream[i]) begin
                drive_byte(stream[i], 0);
                ref_crc = golden_crc_byte(ref_crc, stream[i]);
            end
            $sformat(tag, "Multi-frame %0d (%0d bytes)", f, frame_len);
            check(ref_crc, tag);
        end
    endtask
 
    // =========================================================================
    // T6 — Hold check: en=0 must never alter crc_out
    // =========================================================================
    task automatic test_hold();
        logic [CRC_WIDTH-1:0] snapshot;
        $display("\n[T6] Hold: register stable when en=0");
 
        apply_reset();
        // Put a non-trivial value in the register.
        en = 1'b1; data_in = 8'hA5;
        @(posedge clk); #1;
        en = 1'b0;
 
        snapshot = crc_out;
        // Wiggle data_in for 20 cycles with en low.
        for (int k = 0; k < 20; k++) begin
            data_in = $urandom();
            @(posedge clk); #1;
        end
        total_checks++;
        if (crc_out === snapshot) begin
            pass_count++;
            $display("  [PASS] Hold 20 cycles: value=0x%04X (unchanged)", crc_out);
        end else begin
            fail_count++;
            $display("  [FAIL] Hold violated: 0x%04X -> 0x%04X", snapshot, crc_out);
        end
    endtask
 
    // =========================================================================
    // T7 — Clear during active computation
    // =========================================================================
    task automatic test_clear_during_tx();
        $display("\n[T7] Clear asserted mid-stream");
 
        apply_reset();
        // Clock in a few bytes to dirty the CRC register.
        en = 1'b1;
        repeat(4) begin
            data_in = $urandom();
            @(posedge clk); #1;
        end
        en = 1'b0;
 
        // Assert clear — must see INIT_VAL on the very next posedge.
        do_clear("Clear mid-stream => seed reload");
 
        // Now feed one known byte and confirm the model also starts from seed.
        begin
            logic [DATA_WIDTH-1:0] b;
          logic [CRC_WIDTH-1:0]  ref_val;
            b   = 8'hC3;
          ref_val = golden_crc_byte(INIT_VAL, b);
            drive_byte(b, 0);
          check(ref_val, "First byte after mid-stream clear");
        end
    endtask
 
    // =========================================================================
    // Main test sequence
    // =========================================================================
    initial begin
        // Deterministic seed for reproducibility; change to test other sequences.
        int seed;
        seed = 42;
        void'($urandom(seed));
 
        $display("=============================================================");
        $display(" CRC-16-CCITT Parallel Engine — Comprehensive Verification");
        $display(" POLY=0x%04X  INIT=0x%04X  DATA_WIDTH=%0d  CRC_WIDTH=%0d",
                 POLY, INIT_VAL, DATA_WIDTH, CRC_WIDTH);
        $display("=============================================================");
 
        // Initialise all interface signals.
        rst_n   = 1'b1;
        clear   = 1'b0;
        en      = 1'b0;
        data_in = '0;
        total_checks = 0;
        pass_count   = 0;
        fail_count   = 0;
 
        // --- Run all tests ---
        test_reset();
        test_directed_known_vector();
        test_directed_patterns();
        test_random_streams(50, 64);      // 50 random frames, up to 64 bytes each
        test_spi_gaps(30, 32, 4);         // 30 frames, gaps 0-4 cycles
        test_multi_frame(20, 32);         // 20 frames with clear between each
        test_hold();
        test_clear_during_tx();
 
        // =====================================================================
        // Final scoreboard report
        // =====================================================================
        $display("\n=============================================================");
        $display(" SIMULATION COMPLETE");
        $display("-------------------------------------------------------------");
        $display("  Total checks : %0d", total_checks);
        $display("  Passed       : %0d", pass_count);
        $display("  Failed       : %0d", fail_count);
        $display("-------------------------------------------------------------");
        if (fail_count == 0)
            $display("  *** RESULT: ALL TESTS PASSED ***");
        else
            $display("  *** RESULT: %0d TEST(S) FAILED — REVIEW LOG ABOVE ***",
                     fail_count);
        $display("=============================================================\n");
 
        $finish;
    end
 
    // =========================================================================
    // Simulation timeout watchdog — prevents infinite hang on DUT lockup
    // =========================================================================
    initial begin
        #2_000_000;
        $display("[WATCHDOG] Simulation exceeded 2 ms budget — force finish.");
        $finish;
    end
 
endmodule