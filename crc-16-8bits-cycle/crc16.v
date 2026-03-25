`default_nettype none

 

// =============================================================================

// Module : crc_parallel

// Function: Single-cycle, fully-parallel CRC engine for SPI Master peripheral.

//

// Parameters (all overridable at instantiation):

// DATA_WIDTH : Bits processed per clock cycle (default: 8)

// CRC_WIDTH : Width of the CRC shift register (default: 16)

// POLY : Generator polynomial (no implicit MSB)

// CRC-16-CCITT => 16'h1021 (x^16 + x^12 + x^5 + 1)

// INIT_VAL : Seed loaded on reset or clear (default: 16'hFFFF)

//

// Interface (unchanged from original):

// clk : System clock

// rst_n : Asynchronous active-low reset

// clear : Synchronous clear — reloads INIT_VAL at start of a new frame

// en : Clock-enable — register update only when a valid byte is present

// data_in : DATA_WIDTH-bit input word from Tx/Rx FIFO

// crc_out : CRC_WIDTH-bit registered CRC accumulator

// =============================================================================

module crc_parallel #(

parameter integer DATA_WIDTH = 8,

parameter integer CRC_WIDTH = 16,

parameter [CRC_WIDTH-1:0] POLY = 16'h1021,

parameter [CRC_WIDTH-1:0] INIT_VAL = 16'hFFFF

)(

input wire clk,

input wire rst_n,

input wire clear,

input wire en,

input wire [DATA_WIDTH-1:0] data_in,

output reg [CRC_WIDTH-1:0] crc_out

);

 

// =========================================================================

// ELABORATION-TIME: Build the fully-parallel Boolean dependency matrix.

//

// Theory of operation

// -------------------

// The original always @(*) loop is a bit-serial recurrence:

//

// for i in 7..0:

// feedback = crc[15] ^ data[i]

// crc = (crc << 1) ^ (feedback ? POLY : 0)

//

// After symbolic execution over DATA_WIDTH steps, every output bit j is

// a *fixed* XOR sum of a subset of the input bits (crc_out, data_in).

// We capture that subset as a bitmask CRC_MATRIX[j].

//

// Hardware result: one level of AND gates (masking) + one XOR tree per

// output bit. Critical-path depth = O(log2(CRC_WIDTH+DATA_WIDTH))

// instead of the O(DATA_WIDTH) mux chain in the original.

// =========================================================================

localparam integer TOTAL = CRC_WIDTH + DATA_WIDTH;

 

// build_matrix() is a pure constant function — zero hardware is inferred.

// It returns a flat [TOTAL*CRC_WIDTH-1:0] vector; slice [j*TOTAL +: TOTAL]

// gives the dependency mask for output bit j.

//

// Bit encoding of each mask:

// bits [CRC_WIDTH-1 : 0 ] => crc_out bits

// bits [CRC_WIDTH+DATA_WIDTH-1 : CRC_WIDTH ] => data_in bits (MSB = bit DATA_WIDTH-1)

function automatic [TOTAL*CRC_WIDTH-1:0] build_matrix;

input dummy; // Verilog-2001: at least one input required

integer r, c;

// Symbolic state: state[r] is the Boolean expression for CRC bit r.

// A 1 in position k means "XOR with input bit k".

reg [TOTAL-1:0] state [0:CRC_WIDTH-1];

reg [TOTAL-1:0] nxt [0:CRC_WIDTH-1];

reg [TOTAL-1:0] fb_mask;

begin

// Initialise: each CRC bit maps only to itself.

for (r = 0; r < CRC_WIDTH; r = r + 1) begin

state[r] = {TOTAL{1'b0}};

state[r][r] = 1'b1;

end

 

// Symbolically clock in DATA_WIDTH bits, MSB-first (SPI convention).

for (c = DATA_WIDTH-1; c >= 0; c = c - 1) begin

// feedback = state[CRC_WIDTH-1] XOR data_in[c]

fb_mask = state[CRC_WIDTH-1];

fb_mask[CRC_WIDTH + c] = fb_mask[CRC_WIDTH + c] ^ 1'b1;

 

// Shift left and conditionally XOR polynomial.

// nxt[0] gets the feedback (LSB of LFSR after shift).

nxt[0] = (POLY[0]) ? fb_mask : {TOTAL{1'b0}};

 

for (r = 1; r < CRC_WIDTH; r = r + 1) begin

nxt[r] = (POLY[r]) ? (state[r-1] ^ fb_mask) : state[r-1];

end

 

for (r = 0; r < CRC_WIDTH; r = r + 1)

state[r] = nxt[r];

end

 

// Pack into flat return vector.

for (r = 0; r < CRC_WIDTH; r = r + 1)

build_matrix[r*TOTAL +: TOTAL] = state[r];

end

endfunction

 

localparam [TOTAL*CRC_WIDTH-1:0] CRC_MATRIX = build_matrix(1'b0);

 

// =========================================================================

// COMBINATIONAL: Single-level XOR reduction — one assign per output bit.

//

// combined packs both register and data into one vector so the mask

// indexing directly selects the contributing bits.

// Bit layout: combined[CRC_WIDTH-1:0] = crc_out

// combined[CRC_WIDTH+DATA_WIDTH-1:CRC_WIDTH] = data_in

// =========================================================================

wire [TOTAL-1:0] combined = {{data_in}, {crc_out}};

wire [CRC_WIDTH-1:0] crc_next;

 

genvar j;

generate

for (j = 0; j < CRC_WIDTH; j = j + 1) begin : gen_crc_bit

// XOR-reduce all bits of combined that are set in the mask.

// Synthesis tool maps this to a balanced XOR tree automatically.

assign crc_next[j] = ^(combined & CRC_MATRIX[j*TOTAL +: TOTAL]);

end

endgenerate

 

// =========================================================================

// SEQUENTIAL: Single always block — async reset, sync clear, clock-enable.

//

// Priority: rst_n (async) > clear (sync) > en (sync)

// Idle cycles (en=0, clear=0): register holds, no switching activity.

// =========================================================================

always @(posedge clk or negedge rst_n) begin

if (!rst_n)

crc_out <= INIT_VAL;

else if (clear)

crc_out <= INIT_VAL;

else if (en)

crc_out <= crc_next;

end

 

endmodule