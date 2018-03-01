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
Smart shades is a web service that allows one to control their window shades using a website.
The hardware requirement is a Raspberry Pi (connected to the Internet), a stepper motor, housing for the stepper motor (3D printed), a stepper motor driver (I used the Pololu A4988), a 10K ohm resistor, and a domain.
The application uses Python, Flask, OpenShift in the back end, Bootstrap, JavaScript, and Ajax.
In short, there are two Flask apps running, one on [a CSH domain](shades.csh.rit.edu) and one on the Pi.
The Flask app on the CSH website has the JavaScript and Ajax to make requests to the Flask app on the Pi, which can then take care of changing the window shades.

# The Story
I picked up this IOT project from R&D.
Spencer had the hardware (stepper motor, housing for stepper motor, and the stepper motor driver) and asked if someone could do the software by ImagineRIT.
I had some ideas for ImagineRIT, but this one seemed more fun than the rest of them.
I went into this knowing how to code, specifically in Python, but not having a great understanding of how to incorporate the hardware with the software, including web application integration.
I started the project by figuring out how to use RPi.GPIO library by making a simple program with LEDs.
Then I started using the stepper motor driver and the stepper motor.
This ended up being a hardware problem, not a software one.
~~Fun fact, not having documentation makes everything much more difficult.~~
After countless hours I figured out that I can connect an LED to 2 of the 4 pins of the motor and if the LED lights up upon turning the motor then I have found a pair of wires.
From there I had to figure out how stepper motors work in software, which comparatively was not that difficult.

The next part of this project was controlling the motor from a website.
I started by reading about **Flask** and making a quick Hello world application on the IP on the Pi.
Since Flask uses python, and so does my code for the shades, I was simply able to combine the two.
I learned about **HTML** and **bootstrap** while creating the index page for this application.

I now needed a domain that people could type in, because remembering an IP address is only possible when you type it in countless times as the developer.
Thankfully the RTPs helped me out during the OpCommathon by showing me OpenShift.
As soon as I ran it up, it crashed.
Rpi.GPIO imports can only be run on a Raspberry Pi... I eventually decided to make a second Flask app that would simply run on the CSH domain and link to the IP of the Pi.
This, however, was not ideal because every time you changed the height of the shade, the page would reload.
That is neither pretty nor efficient.
To make the matters worse, the link was to an IP address, and a real world application should not be pointing to an IP address.
So upon suggestions I decided to implement **Ajax**.

I had never used JavaScript, nor Ajax prior to this, so it was a bit of learning curve.
Obstacle one was making the script work; aside from syntax, it took a while to realize that script needed to be called after the buttons were created.
Then came other obstacles, such as not being able to POST to Pi because it ran on HTTP and the website ran on HTTPS.
Somewhere in there I had to implement CORS or Cross-Origin Resource Sharing, lack of it crashes the program.
I tried for the longest time to have HTTPS with the IP of the Pi, but it never worked perfectly, so I decided to go with allowing HTTP requests on the OpenShift/CSH domain.

I proceeded to add some more functionality to this application after OpCommathon.
This took a day's worth of work because I was still learning JavaScript.
Now you can click buttons to set the height as a percentage, change how many steps or pulses the motor requires to make the shade go from completely down to completely up, and move the motor n steps at a time for debugging purposes.
Furthermore, it  shows the current shade percentage.
The idea behind showing that information is that if it does not match up with what you have physically in front of you, then you will know that you need to change your values for the program.

Altogether, this project was a lot of fun.
I learned quite a bit, both in the software world and hardware world.
ImagineRIT is still weeks from now, and as a result I plan on adding Amazon Alexa Skill to this, or someway of using voice command to perform the same actions.

P.S. For details on wiring components, please visit the GitHub source of this project [here](https://github.com/axg4975/smart-window-shades).
