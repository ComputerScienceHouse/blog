---
layout: post
title: SmashNotify
date: 2018-04-03
categories:
  - projects
description: A Smash.GG Match Notifier
image: https://raw.githubusercontent.com/fickleEfrit/pysmash/notifier/pysmash/smashnotify%20picture.jpg
image-sm: https://raw.githubusercontent.com/fickleEfrit/pysmash/notifier/pysmash/smashnotify%20picture%20small.png
author: Jonah Fritz
author-image: https://i.imgur.com/qNdyCP3.jpg
author-bio: A freshman software engineering student from NJ.
author-email: jonahfritz@outlook.com
author-social:
  github: https://github.com/fickleEfrit
---
SmashNotify is an app made in Python that allows people entered in tournaments on Smash.gg to receive text-message updates when they have a match they need to play! It makes use of TKinter for a GUI, pysmash to access data from the Smash.gg API, and Twilio to send text messages from Python.

Before SmashNotify, I had never tried to make an app with a GUI using Python, and I had also never used any kind of wrapper for a website's API. When I first found out about pysmash, the way the API was written made it impossible to retrieve data about matches that had not already been completed, so I needed to work through all layers of the filtering and make it possible to keep these sets, and just make more parameters for what data is desired in general. 

After I had modified the API to the point where it was possible to get the information I wanted, I decided that SmashNotify would be much more useful if it had a GUI. Looking through the options, I decided to go with TKinter. Having some familiarity with JavaFX from my CS classes, I found TKinter to be very nice. It follows a similar kind of tree-like hierarchy for creating parts of the UI, but is much simpler for things like EventHandlers with buttons. Alongside the basic UI, I also needed a way to actually notify the user. After searching around, it seemed like Twilio was the best choice for sending messages to an actual phone, which would be important if you are away at a tournament.

The idea of SmashNotify is a functionality that I've often wanted when entering Smash tournaments. Smash.gg has a lot to offer over alternatives like Challonge, but this is definitely a feature they could use. In the meantime, though, I figured I might as well make it for myself! It definitely is not as elegant as it could be if were was baked in directly to Smash.gg, but it's definitely the most real-world applicable application I've ever made.

Outside of pysmash which is obviously somewhat niche in its uses, Twilio and TKinter are both technologies that seem to offer a lot of utility, and I will definitely look to them in the future for any apps I decide to make. I would definitely be interested in learning more back-and-forth text communication with Twilio, for example being able to prompt the entire app over text instead of needing to run the recursive loop on your computer and leave it running. For those interested, the source code (including the fork of the existing pysmash API) is available [on GitHub](https://github.com/fickleEfrit/pysmash/tree/notifier). Maybe this will finally be the push the RIT Smash Club will need to switch over to Smash.gg!
