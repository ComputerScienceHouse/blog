---
layout: post
title: CSH Social App
date: 2018-04-12
categories:
    - projects
description: A social app for CSH made using swift
image: 
image-sm: 
author: Jeffery Phillips and Cori Mori
author-image: 
author-bio: 
author-email: 
author-social:
    github: https://github.com/melocotonJefe
    linkedin: 
---

Jeff:
Currently, CSH uses many different platforms to plan events. We gauge interest for events at House Meeting or run a poll on Discourse, we can view events on the Google Calendar, we remind members about events through the Active Members slack channel, and we take attendance through Conditional. Because of this, the idea for a CSH Social app, where all of these functions can be held in one place, was formed.
Building an app is a rather large task so I decided to work with Cori Mori splitting the work into frontend being done by me and backend being done by her. I also am a former Science Exploration and current Industrial design student so I have minimal previous coding experience. Swift is a fairly new coding language meaning it is rapidly being updated and changed into newer and better versions. This causes many of the guides and tutorials needed to learn the language to be outdated. This made the most challenging task while designing this app learning the Swift syntax. So during OPCOMMATHON I threw myself into learning this syntax and after fourteen hours of translating guides and fixing errors I had a, very basic, but good understanding of the Swift language.
The design for the front end was originally sketched out along with notes on all the functionality I would like the app to have in the future. From the sketch a prototype was made using photoshop and InVision. That protype was then used as a model when I began working in XCode. XCode makes a lot of front end relatively easy by its use of view controllers. Using a view controller aspects such as the search bar, navigation controller, and tableview were able to be dragged and dropped onto the different tabs of the app. Once your view is set up you are able to start writing code which links the view to your functionality where we reach the divide between frontend and backend.

Cori:
I did the back end development for the CSH Social App.
As of right now you are able to create and store events in a data structure with the "dog spotting" feature and then you can filter through them with the search bar.
I plan on connecting the app with the google calendar API so that members have easy access to both the calendar events and the random events that happen on floor.
I am also planning on implementing push notifications so that memebers will be notified when an event it happening.
To try and limit the amount of push notifications all members receive, I hope to add in a type of subscription service that will allow users to subcribe to event types so not everyone is getting a notification for Gracie's Brunch every Sunday.
It was fairly difficult learning Swift because up until this point I had only ever coded in C# and I was not used to the syntax at all.
Overall I found swift and Xcode to be very user friendly.  It has a lot of drag and drop features that allow you to get the stub for the function and have it already be linked to that feature.
There wasn't anything that I particularlly disliked about Swift other than having to learn about the different UI applications.
While working on the back end of the app, I ran into a few minor problems.  The search bar doesn't disappear when you scroll down like it does in most other apps, but after struggling over it for a few hours I decided to just keep it because it's not a bug it's a feature.
