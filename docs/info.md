<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

This is an 8-bit synchronous up/down counter implemented in Verilog. The counter increments or decrements its value based on the up_down control input and counts only when the enable signal is high. It supports synchronous reset functionality.

Features

8-bit counter value (q)

Synchronous reset (reset)

Count enable (enable)

Direction control (up_down)

1 = count up

0 = count down

Increment or decrement on every rising edge of the clock (clk) when enabled
## How to test

| Port     | Direction | Width | Description                          |
| -------- | --------- | ----- | ------------------------------------ |
| clk      | input     | 1     | Clock signal (rising edge triggered) |
| reset    | input     | 1     | Synchronous active-high reset signal |
| enable   | input     | 1     | Enable counting when high            |
| up\_down | input     | 1     | Count direction: 1 = up, 0 = down    |
| q        | output    | 8     | 8-bit counter output value           |



## External hardware

LEDs
