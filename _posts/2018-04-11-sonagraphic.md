---
layout: post
title: Sonagraphic
date: 2018-04-11
categories:
    - Major-Project
description: Proof-of-concept game demo that uses audio analysis to affect gameplay. Learned how to use Unreal, in particular its visual coding "Blueprints", as well as basic concepts of audiovisualization.A proof of concept for a twin-stick shooter that utilizes audio analysis to affect gameplay based on the music being played.  I did a lot of research for this project over winter break, then spent a couple hours each week on average working on it from the end of winter break until submission.  During that time I learned a lot about visual coding with Unreal 4's blueprint system, as well as the fundamentals of audio visualization, specifically what to look at in an audio file to extract a beat.  The current build analyzes a manually input wav file as it's played for beats and allows the player to fire a special beam that deals instantaneous damage to all enemies in its path if they hit the special fire button on those beats.  Consecutive beats hit on time widen the beam, and misses jam the special fire temporarily.  My main issue ended up being the platform I was working on; time would've been better spent had I realized how nonexistant documentation is on implementing external C++ plugins into an Unreal project.  If I were to do this again, I'd probably do it in Unity.  There's a well documented audio analysis tool available on their storefront that was used to develop AudioShield (which was my original inspiration for this project).  Especially now that I have a better understanding of what's going on behind the scenes to grab beats from a song, I can focus more of my efforts on making the gameplay fun and adding features like song importing.
image: https://imgur.com/9geUqRp
image-sm: https://imgur.com/ApFXb5t
author: Nicholas Mercadante
author-image: https://avatars3.githubusercontent.com/u/25127906?s=460&v=4
author-bio: 2nd Year Game Design & Development Student at the Rochester Institute of Technology
author-email: nvm6501@rit.edu
author-social:
    github: https://github.com/dantayy
    linkedin: https://www.linkedin.com/in/nicholas-mercadante/
---

Post content goes here!
A proof of concept for a twin-stick shooter that utilizes audio analysis to affect gameplay 
based on the music being played.  I did a lot of research for this project over winter break, 
then spent a couple hours each week on average working on it from the end of winter break until submission.
During that time I learned a lot about visual coding with Unreal 4's blueprint system, 
as well as the fundamentals of audio visualization, specifically what to look at in an audio file to extract a beat.  
The current build analyzes a manually input wav file as it's played for beats and allows the player to fire 
a special beam that deals instantaneous damage to all enemies in its path if they hit the special fire button on those beats.  
Consecutive beats hit on time widen the beam, and misses jam the special fire temporarily.  
My main issue ended up being the platform I was working on; time would've been better spent 
had I realized how nonexistant documentation is on implementing external C++ plugins into an Unreal project.  
If I were to do this again, I'd probably do it in Unity.  There's a well documented audio analysis tool available 
on their storefront that was used to develop AudioShield (which was my original inspiration for this project).  
Especially now that I have a better understanding of what's going on behind the scenes to grab beats from a song, 
I can focus more of my efforts on making the gameplay fun and adding features like song importing.