---
layout: post
title: Gameboy Assembly
date: 2018-04-12
categories:
    - projects
description: Sprite movement, joypad input, and box collision in Gameboy assembly
image: https://github.com/RebeccaSyria/gbc/blob/master/screenshots/2018-04-12-161539_542x523_scrot.png
image-sm:
author: Rebecca Syria
author-image:
author-bio: Second Year CS Major
author-email: rebeccas@csh.rit.edu
author-social:
    github: https://github.com/RebeccaSyria
    linkedin: https://www.linkedin.com/in/RebeccaSyria
---

Gameboy Assemby
---
Gameboy assembly is an assembly programming language for the gameboy and gameboy color systems. The instruction set is extremely similar to that of the z80 processor, however there are a handful of differences in the way that input and output are handled. Over the past several months I have been learning gameboy assembly, and currently have a working demo in which a sprites can be displayed, moved with the joypad, and collided with each other.

Sprite Display
---
Sprites for the gameboy are most commonly 8x8 pixels, however they can also be 8x16 pixels. If a larger sprite is needed, placing two or more sprites next to each other emulates the display of a larger sprite.

The attributes of each sprite are stored in the Object Attribute Memory, which can hold up to 40 sprites at a size of 4 bytes each. Byte 0 holds the Y position of the sprite, which can be between 0 and 160 for any on screen sprite, any other value will hide the sprite from the screen. Byte 1 holds the X position of the sprite, which acts similarly to the Y position, but within the values of 0 and 168. Byte 2 is an integer between 0 and 255 that is index of the tile that represents the sprite in the VRAM. Byte 3 holds attributes and flags for the sprite in each of its bits. Bits 0-2 represent the palette for the sprite in Gameboy color mode, bit 3 is either 0 or 1, for VRAM tile bank 0 or 1, which specifies which VRAM bank to look in for the sprite image data which is also only relevant for the Gameboy color, bit 4 represents the palette bank of either 1 or 0, bit 5 flips the sprite horizontally when set to 1, bit 6 flips the sprite vertically when set to 1, and bit 7 sets the layer priority of the sprite, with 0 meaning "above the background."

Joypad input
---
Joypad input is read from a special register at address `FF00`. Each bit stored at the address represents a different input, up, down, left, right, or a, b, start, select, are stored in bits 0-3, if bit 4 is selected then the directional keys are what is stored, and if bit 5 is selected then the button keys are stored. Bits 6 and 7 of the register are not used.
When reading from joypad input, the keypress must be loaded from the hardware multiple times, to account for keypad bounce, which is an effect of the Gameboy hardware. To use this value to move a sprite, the bits loaded from the hardware register can be compared to the expected value for each different directional key, and if the value matches then the sprite x or y value can be loaded from the OAM, incremented or decremented, and then loaded back into the OAM.

Box Collision
---
Collision in assembly is done in the same way collision is done in most other languages, by comparing coordinate values of two sprites against each other. The way I did this was by making a function that takes in the x or y coordinate from each sprite in the a and c registers, and then use another register, in this case I used the b register, to keep track of how many iterations of comparison has been done, and each iteration the coordinate of one of the sprites is decremented, so it is compared against the entire edge of the sprite. When a collision is detected, 0 is loaded into the b register and the function returns, if no collisions are detected 1 is loaded into the b register and the function returns. The b register is then compared to 0, and the action that takes place on collision is then done. In this case, I had the first sprite push the second sprite on collision, so it jumps to a function in the program that moves the second sprite in the same manner as the first sprite.
