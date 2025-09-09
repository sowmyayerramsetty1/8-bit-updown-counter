8-bit Up/Down Counter
Overview

This is an 8-bit synchronous up/down counter implemented in Verilog. The counter increments or decrements its value based on the up_down control input and counts only when the enable signal is high. It supports synchronous reset functionality.

Features

8-bit counter value (q)

Synchronous reset (reset)

Count enable (enable)

Direction control (up_down)

1 = count up

0 = count down

Increment or decrement on every rising edge of the clock (clk) when enabled

Ports
Port	Direction	Width	Description
clk	input	1	Clock signal (rising edge triggered)
reset	input	1	Synchronous active-high reset signal
enable	input	1	Enable counting when high
up_down	input	1	Count direction: 1 = up, 0 = down
q	output	8	8-bit counter output value
Behavior

On the rising edge of clk:

If reset is asserted (high), the counter resets to 0.

Else, if enable is high:

If up_down is 1, the counter increments by 1.

If up_down is 0, the counter decrements by 1.

If enable is low, the counter holds its current value.

Usage

Instantiate the module in your design and connect the ports accordingly.

Example:

up_down_counter my_counter (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .up_down(up_down),
    .q(counter_value)
);

Testing

To test the counter:

Assert reset to initialize the counter to zero.

De-assert reset.

Set enable high and up_down to 1 to count up on each clock.

Change up_down to 0 to count down on each clock.

Set enable low to hold the current value.

Monitor output q to verify correct counting behavior.

Notes

The counter wraps naturally due to overflow/underflow of 8-bit register (q).

The reset is synchronous and active high.
