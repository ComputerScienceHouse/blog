---
layout: post
title: Smart Window Shades
date: 2018-03-01 00:00:00
categories: projects
description: A web service that allows one to control their window shades using a website
author: Ayush Goel
author-image: https://avatars2.githubusercontent.com/u/10407155?s=460&v=4
author-bio: First Year Computer Science Student at Rochester Institute of Technology
author-email: axg4975@rit.edu
author-social:
  github: https://github.com/axg4975
  linkedin: https://www.linkedin.com/in/ayush-goel-589ba215a/
---
# Summary
Smart Shades is a web service that allows one to control window shades using a website. The hardware requirement is a Raspberry Pi (connected to the Internet), a Stepper Motor, housing for the stepper motor (3D printed), a Stepper Motor Driver (I used the Pololu A4988), a 10K Ohm Resistor, and a domain. The application uses python, Flask, OpenShift in the back end, Bootstrap, JavaScript, and Ajax. In short, there are two Flask apps running, one on [CSH domain](shades.csh.rit.edu) and one on the Pi. The flask app on CSH website has the JavaScript and Ajax to make requests to the Flask app on the Pi, which can then take care of changing the window shades.

# The Story
I picked up this IOT project from R&D, Spencer had the hardware and asked if someone could do the software by ImagineRIT. I had some ideas for ImagineRIT, but this one seemed more fun than the rest of them. I went into this knowing how to code, specifically in python, but not having a great understanding of how to incorporate the hardware with the software, or how the web stuff works. I started the project by figuring out how to use RPi.GPIO library by making a simple program with LEDs. Then I started using the Stepper Motor Driver and the Stepper Motor, which this ended up being a hardware problem not a software one. Fun fact, not having documentation makes everything much more difficult. After countless hours I figured out that I can connect an LED to 2 of the 4 pins of the motor and if the led lights up upon turning the motor then I have found a pair of wires. From there I had to figure out how stepper motors work in software, which comparatively was not that difficult.

The next part of this project was controlling the motor from a website. I started by reading about **Flask** and making a quick Hello world application on the Pi's IP. Since Flask uses python, and so does my code for the shades, I was simply able to combine the two. I learned about **HTML** and **bootstrap** while creating the index page for this application.

I now needed a domain that people could type in, because remembering an IP address is only possible when you type it in countless times as the developer. Thankfully the RTPs helped me out during the OpCommathon by showing me OpenShift. As soon as I ran it up, it crashed. Rpi.GPIO imports can only be run on a Raspberry Pi... I eventually decided to make a second Flask app that would simply run on shades.csh.rit.edu and link to the Pi's IP.

This was not ideal because every time you changed the height of the shade the page would reload, which does not look pretty, and the link was to an IP address. So upon suggestions I decided to implement **Ajax**.

I had never used JavaScript, nor Ajax prior to this, so it was a bit of learning curve. Obstacle one was making the script work, took a while to realize that script needed to be called after the buttons were created. Then came other obstacles, such as not being able to POST to PI because it ran on HTTP and the website ran on HTTPS. Somewhere in there I had to implement CORS or Cross-Origin Resource Sharing, else it would crash the program. I tried for the longest time to have HTTPS with the PI's IP, but it never worked perfectly, so I decided to go with allowing HTTP requests on the OpenShift/CSH domain.

I proceeded to add some more functionality to this application, which took a days worth of work because I was still learning JavaScript. Now you can click buttons to set the height in percent, change the motor steps needed for 0% to 100%, and move the motor n steps at a time for debugging purposes. Furthermore, it  shows the current shade percentage, so if it does not match up with what you have then you can know that you need change the numbers up.

Altogether, this project was a lot of fun. I learned quite a bit, both software and hardware included. ImagineRIT is still weeks from now, as a result I plan on adding Amazon Alexa Skill to this, or someway of using voice command to perform the same actions.

P.S. For details on wiring components, please visit the GitHub source of this project [here](https://github.com/axg4975/smart-window-shades)
