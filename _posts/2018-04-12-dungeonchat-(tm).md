---
layout: post
title: DungeonChat (TM)
date: 2018-04-12
categories:
    - CSH
    - MajorProject
    - TextBasedGame
    - Server
    - DungeonChat
    - tm
description: Major Project for Anna Murphy (2017-2018): Chatroom server that hosts a text based RPG for users in a chatroom.
image: 
image-sm: 
author: Anna Murphy
author-image: 
author-bio: First Year Computer Science anr games and most things computers
author-email: blmurphy712@gmail.com
author-social:
    github: https://github.com/blm1003
    linkedin: 
---

# Dungeon Chat (TM) 

The best solution for all your internet chatting needs!

## What is this?

So, you all know Discord, Slack, Facebook Messenger, Google Hangouts, and, everyone's favorite, AOL Instant Messenger. The need for instant messaging apps goes back to the the dawn of humanity. But, with the advent of recent technology, methods of communication have sped up, going from the speed of a horse, to the speed of light.

The idea with this app is to create another solution for this problem, but build it from the ground up so integration with custon Chat Bots is possible, and someone with even a little experience with Java can make a bot for their own chat room.

## The Dungeon Bot

The main impetus for this project was to build a system with which I could create a text-based RPG that multiple users could interact with simultaneously. Thus, the name of this program comes from this bot. 

Ideally, I did a good enough job with documentation that you should be able to follow the code to understand how the Dungeon Bot works, but, if not, the bot works basically as follows:

	1. A room text file is randomly selected from a folder, and a corresponding room object is created based on that information.
	2. The information is printed to the chatroom and the bot waits for an @ mention (with a number) choosing a new room.
	3. The nextRoom variable in the room object is used to repeat step 1 and continute the prosses.

The room text files are formatted in a specific way so that any number of files can be added, making the possible combinations of dungeons effectively infinite. For room text files are formatted like so:

	Line 1: Title of the Room.
	Line 2: Text presented to the user.
	Line 3: Option 1::Result 1::Next Room Type
	Line 4: (Repeat the format for line 3 for any number of possible options)

## Hopes for Future Updates:

As the application works right now, the user enters a username, chooses or creates a chatroom, and then enters it. This works fine as far as it does, but it would be really nice to have actual logins for a set number of users allowing for whitelisted and/or blacklisted chats/users. Furthermore, there is currently the basis for password protected chatrooms, but I have not been able to implement an ability to lock the room.

Also, integrating image support would be really good. I am not sure how to integrate images into a JavaFX TextArea, but I am sure there is a way to make it work.

## What did I learn?

Java is a really cool language. Object orientation is a fun time, and this project has helped a lot to tie all of Java together for me. I thought initially that threading was pointless and gross, but Boy Was I Wrong. Threading is super useful, and, assuming you don't do anything too weird, it's not even that complicated. JavaFX is another thing that has a super steep learning curve, but its really useful once you get it. Allowing you to have programs that aren't limited to the command line. And beyond that networking is something that is just awesome. This project combined all of those things for me in a way that I was able to have a lot of fun, and create something that I am able to pour my nerdy love for fantasy RPGs into.
