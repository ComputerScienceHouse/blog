---
layout: post
title: VlocChain - Backend
date: 2018-04-12
categories:
    - Projects
    - Networking
    - Videos
    - git
    - Java
    - nginx
    - uwsgi
    - gunicorn
    - Sockets
    - BlockChain
description: The program that distributes and recalls videos, upon download and request. This takes care of all the "behind the scenes" networking and hosting for our decentralized video sharing website!
image: 
image-sm: 
author: Owen Sullivan
author-image: https://avatars3.githubusercontent.com/u/23535069?s=460&v=4
author-bio: A small creator.
author-email: multiojuice@gmail.com
author-social:
    github: https://github.com/multiojuice
---

## Background
This project started at BrickHack4 with an initial vision that has altered so much over the past few months. Our current vision is to create a video sharing website, using the ideas behind Blockchain to host and hold all of the video data on seperate machines that we call "Holders". These holders are called upon by our backend program that runs side by side with the web server. These calls instruct our holders to either prepare to download a new video, or to send a video to a web client, or a person trying to view the video on our website.

## Details
The backend is written in Java and talks to a mySQL/MariaDB database to keep track of all holders and where our videos are distributed. Upon a new video upload, our backend is "pinged" by our webserver program, the backend collects the video, find the most storage open holder, and sends it to them. A similar process is done upon "recalls", or when a video is requested, but all the data simply goes in the other way.  

## Tools
The webserver is hosted with a combination of Flask, uwsgi, and nginx. We tested with gunicorn and the web app was written in python3, javascript, HTML and more. The actual backend is written with Java, as explained above.

## Future Plans
There are several cases and more features we are going to add, there is a more updated list on our githubs README.md.

## Github Link
See our source code and all of our future developments [here](https://github.com/VlocC/VlocChain)

