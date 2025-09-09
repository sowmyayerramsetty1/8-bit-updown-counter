<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Suppose you have a ring counter with N flip-flops.

At any given time, exactly one flip-flop holds the value '1' (or 'high'), and the rest hold '0'.

On each clock pulse, the '1' moves one position to the next flip-flop.

After N clock pulses, the '1' returns to the original flip-flop, repeating the cycle.

## How to test

| Clock Cycle | Q3 | Q2 | Q1 | Q0 | Description               |
| ----------- | -- | -- | -- | -- | ------------------------- |
| 0 (Reset)   | 1  | 0  | 0  | 0  | Initial state             |
| 1           | 0  | 1  | 0  | 0  | '1' shifted from Q3 to Q2 |
| 2           | 0  | 0  | 1  | 0  | '1' shifted from Q2 to Q1 |
| 3           | 0  | 0  | 0  | 1  | '1' shifted from Q1 to Q0 |
| 4           | 1  | 0  | 0  | 0  | '1' shifted back to Q3    |


## External hardware

LEDs
