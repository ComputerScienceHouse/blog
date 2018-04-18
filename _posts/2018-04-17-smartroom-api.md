---
layout: post
title: Smartroom API
date: 2018-04-17
categories:
    - Project
    - PHP
    - Lumen
    - REST
    - API
description: A uniffed URL for accessing the varius parts of CSH's Smart Room Display
image: https://fthmb.tqn.com/FzECgdCy_W-gXosZw89_-8UDraw=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/PHP-code-58d2d5803df78c51623a6ce2.jpg
image-sm: https://fthmb.tqn.com/FzECgdCy_W-gXosZw89_-8UDraw=/768x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/PHP-code-58d2d5803df78c51623a6ce2.jpg
author: Leul Berhane-Meskel
author-image: 
author-bio: A 3rd year Computer Science student and an active member of CSH. A Developing Developer.
author-email: leul@csh.rit.edu
author-social:
    github: github.com/LeulBM
    linkedin: 
---
# One API to Rule them All
In March, the idea of CSH creating an exhibit for ImagineRIT 2018 began floating around. We quickly decided on a Smart Dorm room, a glimps of what could be. It would be a great collaborative
 project, with a multitude of unique parts creatied by various members, each person being allowed to work and create how they pleased. The only requirement is that the projects are internet 
connected. The Unified API exists as a way to unify the development experience of user facing point of interaction with the Smart Room. Instead of being forced to consider several endpoint 
naming schemes and data input formatting standards, the unified API allows developers to focus on User interactions rather than figuring out the back end minusha.

# The Tech
This API is written in PHP, utilizing the Lumen framework, specialized for microservices. The making of requests to individual aspects of the room  is handled by a Guzzle 6.0, a PHP package 
made for crafting, sending, and parsing HTTP request and response objects. The source code for the API can be found in my [SmartRoomAPI Repo](https://github.com/LeulBM/SmartRoomAPI). 
Check out the repo for detailed listing of all endpoints as well as links to the related repositories. The service is hosted using CSH's OpenShift environment at 
[smartroom-api.csh.rit.edu](https://smartroom-api.csh.rit.edu).

# But What Can It Do?
Let's go down an example of how the API looks to a developer. Let's say you want to open the shades to the room. First, you need to know the URL you need to access. The naming scheme for the 
API is detailed in the readMe of the API Repository. In the case of the shades, the URL is simple enough, just [smartroom-api.csh.rit.edu/shades](https://smartroom-api.csh.rit.edu/shades). Now we need 
to know what to include in the body of the POST request we will send. In this case, its simply a single variable in JSON called "howOpen" that will range from 0 (completely closed) to 100 (completely
 open). Once the request is sent you will either be met with a message of Success if you are able to POST correctly, or of the old values if you are unable to POST. Now what if you want to 
 simply check on the blinds? Well, you simply send a GET request to the same URL. This consolidation of endpoints makes it simpler to develop, given that all the information about the shades 
 can be accessed from the same URL by simply changing the request type.

# Whats Coming Down the Pipe
This project in the future has a few routes it can move down. If there is a desire for a more robust system capable of supporting say a Lounge, the routes and controllers can be altered to allow for several
of any given object. This would move in tandem with an increase in types of smart hardware the API supports as move endpoints are exposed for use. Secondly, the project can move to include a authention 
system to restrict access to CSH members.
