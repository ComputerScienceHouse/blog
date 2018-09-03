---
layout: post
title: LED Lights
date: 2018-04-09
categories:
    - projects
description: LED IOT Light strip controlled with Arduino.
image: https://github.com/rdausilio/LED_Lights/blob/master/pictures/pic1.jpg?raw=true
image-sm:
author: Rowan D'Ausilio
author-image: https://avatars2.githubusercontent.com/u/16955669?s=460&v=4
author-bio: 1st Year Computer Engineering Technology major at RIT
author-email: rowan@csh.rit.edu
author-social:
    github: https://github.com/rdausilio
---

# Summary
[LED Lights](https://github.com/rdausilio/LED_Lights) is an IOT project that allows the user to control an LED light strip. The application uses Python, Flask, CSS, HTML, and Arduino.

# The Beginning
I realized around late February that I really wasn't a fan of my major. I decided to switch to Computer Engineering Technology from Computing Security so that I could work more with hardware and less with software and networks. This project was something entirely new for me in terms of working with Arduino and doing webdev, and I have decided I'm really not a fan of webdev. For the entire year I had no idea what I wanted to do for my project. I could do anything, but I just couldn't come up with a idea I thought was good enough. While having a conversation with a friend of mine however, the LED Light project idea was formed. I had never worked with Arduino or webdev before so I knew this project was going to be interesting.

# Struggles
My original idea for the project was to have the light strip be controlled by the web app and also a remote. I was told that the remote would be a whole different challenge to tackle so I put that to the side in my head and decided to come back to it in the future. I soon found out that other challenges would arise almost every step of the way once I went to order parts. The light strip arrived from amazon on time along with an external power supply. The power supply was the wrong size however, so over break I was working with a sketchy power supply module and a 9V 1A power supply. Suffice to say, this didn't work. I fixed it by just plugging the board into my computer and the lights into the Arduino. I was scared the the board or the lights were going to get fried (they didn't). The next issue came when trying to get the board to be able to get controlled over WiFi. I started by using an esp8600 WiFi module. I struggled with this one for almost three hours getting the same error every time but everyone I asked as well as the internet couldn't help. I then moved on to using the nRF24. This one was up and working within around thirty minutes, much more preferable to the three hours spent with the esp8600 module without working at the end of it.

# Reflections
All things considered, I think this project taught me a lot about Arduino. Three things come to mind specifically:
1. Plug wires in until the lights turn on
2. Webdev isn't my favorite but I can appreciate it
3. Learning new things is fun, but really time consuming when things don't work at first
