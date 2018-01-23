---
layout: post
title: Alexa RSS Skill
date: 2018-01-22
categories:
  - projects
description: Alexa Skill that reads out tags from an RSS Feed
image:
image-sm:
author: Fred Rybin
author-image: https://avatars0.githubusercontent.com/u/17693407?s=460&v=4
author-bio: First Year Computing Security student
author-email: fredrybin@gmail.com
author-social:
  github: https://github.com/frybin
  linkedin: https://www.linkedin.com/in/frybin/
---

The [Alexa RSS Skill](https://github.com/frybin/Alexa-RSS-Skill) is an Alexa skill that reads content in tags from an RSS Feed. It works by asking for a user input for which RSS Feed they would like hear and then from the user input it reads out the appropriate feed. The data for the different feeds like that name and links to the feeds are all stored in a MySql database. Due to the skill needing to pull information from a database, I decided to make a companion web app to go with it. The [RSS Companion App](https://github.com/frybin/RSS-Web-App) is a simple Python Flask web app that connects to the same MySQL database as the Alexa skill and lets the user add, edit, and delete RSS feeds from the database.

The Alexa RSS Skill and it's companion app is the first big coding project that I have ever made. When I had first started this project I had very little coding experience and had no info on how Amazon Alexa and AWS work. While working on this project I had learned how to use git, GitHub, Node.JS, Amazon AWS, and Python Flask. The Skill went through many iterations until I finally understood how Amazon AWS Lambda and the Alexa Skill Builder worked and communicated with each other.  

All in all, I found this project very enjoyable and it was a great learning experience. Though I am done with this project, I plan to try to make another Alexa skill but this time use another language like python so while I might know the basics about making a skill, I learn something new knew and have another fun time troubleshooting through the many problems that are bound to appear at the beginning.

You can see the all of the source for the Alexa Skill [here](https://github.com/frybin/Alexa-RSS-Skill) and for the web app [here](https://github.com/frybin/RSS-Web-App).
