---
layout: post
title: The Hubris of Man
date: 2018-04-16
categories:
    - SmashBros,
    - Python,
    - Flask,
    - SQLAlchemy,
    - PostgreSQL,
    - HTML,
    - Javascript,
    - Jeffrey'sMajorProject
description: Hubris is a Python Flask application meant as an introduction to Python Flask, PostgreSQL, and Web Development.  It is a joint project between Elijah Bendinsky and Jeffrey Taglic where Elijah Bendinsky created Smash Queue, a service that provides a basic queue implementation allowing users to keep track of the adds and drops during smash in the lounge.  Jeffrey Taglic is in charge of Tournaments, a service allowing users to create a tournament bracket, manage said bracket, and finally complete a major project
image: 
image-sm: 
author: Elijah Bendinsky
author-image: http://zedoax.me/img/logo.png
author-bio: Screeeeeeee
author-email: zedoax@csh.rit.edu
author-social:
    github: https://github.com/zedoax
    linkedin: https://linkedin.com/in/zedoax
---

** Problem:
During Smash in the Lounge, there has never been a good way to keep track of the queueing order for players.  There have been many a time where someone leaves the room, comes back, and finds that they were removed from the 'queue'.  This infuriates many members, and makes it a very confusing process during peak hours of Smash. 

** Solution:
In order to devise a solution to this problem, a clean, simple, and intuitive design needed to be created for players to be added, and moved in order that they are entering.  For this, a doubly linked list was selected.  The reason this was chosen over a queue is the ability to drop people from the queue when they have better things to do with their lives.  This is accomplished through a Python class that is stored per session, so multiple queues can be in play for not only smash, but other party games with limited players as well.  The app runs through Python Flask, using the Jinja2 templating engine.  CSH Tournaments are also a part of my submission, but has no direct interaction with Smash Queue.  Tournaments uses a PostgreSQL database, and appropriate GET, POST calls to query and create resources respectively.  

** Things Learned:
This was my first python project outside of python used in CS for AP.  Because I paid little attention to python to begin with, I had to relearn quite a few of the basic language pieces python uses.  The learning part of this project focused on how to create a dynamic Flask application which populates an html/jinja2 template.  I began reading demo and beginner documentation, and after performing a few syntax checks I began reading intermediate documentation.  After I felt I had a grasp on how to create the application, only then did I begin.  I also learned about magic variables in python, and how to utilize these to override creation, create packages, and import said packages.  I also learned about importing python libraries, or parts of library files (yeah, I actually didn't have a good feel of that before).  The other topic I focused on learning is PostgreSQL.  I had not yet begun to learn SQL in classes, so I decided to take the initiative.  I learned how to build db tables, insert values into said tables, and query the table to get wanted values.

** Difficulties encountered:
One of the most difficult parts of this project ended up being how I handled my routes and importing variables in python.  I encountered a circular import by trying to handle the database connection in both app.py and my database package.  To resolve this, I created a separate file for the db connection, and moved my route handling from direct routes in flask to Blueprint templates to be built by app.py.  Another difficulty was the database structure.  Me and Jeffrey spent many moons contemplating this, and had a rough idea.  After learning them in class, I employed database reduction techniques to a database we created with WAY more information than necessary.  The database ended up being approximately 8 tables, with a few attributes in each.  

** Things to be Improved:
- I still feel like the database can be improved a bit.  
 - I applied reduction techniques, but there may be a few tables that would be useful to add, and remove another.  
- Deploy on Openshift (Resolved)
- Caching issue on openshift 
 - There is an issue on openshift that prevents the queue from displaying properly without a refresh
- Move the queue modification from a GET refresh to Javascript
- Add a "Clear Queue Button" (Idea courtesy of Mike Francis)

