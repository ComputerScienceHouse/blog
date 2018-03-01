---
layout: post
title: Internet Of Lamps
date: 2018-02-28
categories: 
  - projects
description: Two internet connected lamps linked through a flask web server that turn on simultaneously
image: https://csh.rit.edu/~wgahnagl/gayBox.png
image-sm:  https://csh.rit.edu/~wgahnagl/gayBoxSmaller.png
author: Skyler Clark
author-image: https://avatars1.githubusercontent.com/u/4897492?s=460&amp;v=4
author-bio: A freshman computer science student!
author-email: sjc1689@rit.edu
author-social:
  github: https://github.com/SkylerJaneclark
  linkedin: https://www.linkedin.com/in/skyler-c-58962012b/
---

The Internet of Lamps project is two linked lamps that communicate through a flask webapp to turn on simultaneously so long as they're connected to WiFi. 

I started this project wondering what I should make for my girlfriend for a christmas present, and started browsing the web for ideas. I ended up coming across a cheap IOT board called the nodeMCU which gave me the idea of building a couple lamp, and decided to just go in blind. 

Figuring out how electricity actually worked was probably the hardest part of the project. I ended up frying one of my boards entirely by running current through it backwards, and set an ultrasonic sensor on fire by doing the same thing. I had to figure out how to get power to a light strip while sending less power to the board, how to program the board (and get it to work with my girlfiend's wifi 7 hours away), how I was going to handle the requests the boards were sending on my webserver, laser cut the actual wooden part of the lamp, and how to do all that before christmas came, with no experience having even touched anything similar!

Luckily I managed, and now we have a little way of saying hello to each other from all the way across new england. 
