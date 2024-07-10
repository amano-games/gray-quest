# Gray Quest

This is a little experimental method on obtaining gray pixels on the Playdate.
Done out of curiosity and fun.

It’s just a static image, you can change the FPS by urning the crank.

**It really only looks good on playdate (not on the simulator).**

What is happening:

- We’re essentially cutting the PD’s resolution in half, using a pixel grid of 2x2 for every game pixel.
- Gray pixels are defined using a checkerboard pattern that flips or inverts, every frame update. Giving a smoother gray perception at lower fps. As opposed to just turning the black pixels on a dither pattern on and off.

Upsides:

- Gray looks nice.
- Potentially usable on an actual game.

Downsides:

- Really only lets you use 3 colors ,black, 50% gray, and white. (25% and 75% gray tones are somewhat possible, but they look a little janky and distracting)
- Potential flashing if the frame rate drops.
