---
layout: post
title: "Hexcubic"
date: 2018-4-12
categories:
  - projects
description: A website to write in the cipher Hexcubic
author: Bonney
author-image: https://avatars0.githubusercontent.com/u/23468221?s=400&u=3b35746a4c32d31795c47e2312f6130bbcdc10e7&v=4
author-bio: Third Year Chemistry Major at Rochester Insitutue of Technology
github: https://github.com/mjb4611
---

# Background: Creating a Cipher
Last November I was doodling some hexagons in my notebook, as a chemist might do, and I took notice that all it takes is three lines to transform a hexagon into a cube.
Another detail to note is that there are only two types of cubes you can make, which one can denote as the up and down position.
These details are very convient if you wanted to make a cipher based of off hexagons.
At this point I abandanded paying attention to my class altogether, and determined to develope a neat cipher instead.

![alt text](https://www.truthcontrol.com/files/truthcontrol/images/3644.gif)

### The basic concept is simple, each letter/number is coded into two hexagons, determined by three details:

* The first hexagon is either _Up_, _Down_, or _Empty_.
* The sides are numbered one through six, starting at the upper right side of the Hexagon.
* The second hexagon is attached at one of theses sides in either the _Up_ or _Down_ positions.

This allows for 36 unique combinations which conviently equals the twenty-six letters of the alphabet
and the ten basic numeric digits. 
From there I developed a series of rules that allowed one to form words and sentences, which you can find 
[here](https://drive.google.com/file/d/1GN5Qt6NdEn-Z8dyewqb9rwUd-WkOTAah/view?usp=sharing) for your own enjoyment. 
I aptly named this cipher **Hexcubic**.

# Project: Developing a Website
It a certian amount of effort and the abiliity to draw numerous hexagons that are relatively the same
size to write in Hexcubic. 
Why not then, have a convient webapp that allowed writing in Hexcubic quick and easy.
Except for not being well versed in computing, having no knowledge on website development,
and being overall unsure on where to star- I was ready to go!

### The Challenges
* Learning how to run React(after deciding Flask wasn't the right direction)
* Becoming familir in Javascript
* Implementing a Hexagon Grid(with a little [help](https://www.npmjs.com/package/react-hexgrid).)
* Translating how to write in Hexcubic to actualization

### The Results
By simply dragging a dropping the appropiate hexagons, you can easily write a few words in Hexcubic.
![alt text](https://scontent-lga3-1.xx.fbcdn.net/v/t1.15752-9/30656948_10204319285458120_7639113495060938752_n.png?_nc_cat=0&oh=0c3141e124ad491defef5fdf2bef9e3e&oe=5B6BBAE2)

### The Future
The idea of implementing something that allows someone to translate from words into Hexcubic(or to decipher words from Hexcubic) is both exciting 
and a daunting task.
Hexcubic is a visual two-dimensional cipher, and I'm unfamiliar with the process of encoding and translating ciphers. 
However, as I expand my knowledge in computing, this is a goal I'll continously work towards.
