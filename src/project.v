/*
 * Copyright (c) 2024 Your Name
 * SPDX-License-Identifier: Apache-2.0
 */

`default_nettype none

module tt_um_sowmya_updown_counter (
    input  wire [7:0] ui_in,    // Dedicated inputs
    output wire [7:0] uo_out,   // Dedicated outputs
    input  wire [7:0] uio_in,   // IOs: Input path
    output wire [7:0] uio_out,  // IOs: Output path
    output wire [7:0] uio_oe,   // IOs: Enable path (active high: 0=input, 1=output)
    input  wire       ena,      // always 1 when the design is powered (ignore)
    input  wire       clk,      // clock
    input  wire       rst_n     // reset_n - low to reset
);

    // Internal synchronous reset signal (active high)
    wire reset = ~rst_n;

    wire enable  = ena;
    wire up_down = ui_in[0];

    reg [7:0] q;

    always @(posedge clk) begin
        if (reset)
            q <= 8'b00000000;
        else if (enable) begin
            if (up_down)
                q <= q + 1;
            else
                q <= q - 1;
        end
    end

    assign uo_out = q;      // Output the counter value on uo_out bus
    assign uio_out = 8'b0;  // Force IO output bus to zero
    assign uio_oe  = 8'b0;  // Disable all IO output drivers

endmodule

