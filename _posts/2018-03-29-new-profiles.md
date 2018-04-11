---
layout: post
title: New Profiles
date: 2018-03-29
categories:
  - projects
description: New CSH profiles in Flask because the old one broke
image: https://i.imgur.com/KGNp3xX.png
image-sm: https://i.imgur.com/KGNp3xX.png
author: Nate Dooley
author-image: https://profiles.csh.rit.edu/image/dooley
author-bio: Freshman CIT major
author-email: dooley@csh.rit.edu
author-social:
  github: https://github.com/natedooley
---

## What is Profiles, you ask?

CSH Profiles is the premier social network for Computer Science House members. It facilitates social interaction the way CSHers like it: not interacting at all and just watching from a distance! Using Profiles, you can find all your favorite members and look at all their information, as well as their picture if you forgot what they look like. You can find their birthday and remember to wish them a happy birthday, or you can find their phone number and sign it up for numerous spam agencies as a _hilarious_ prank! Max Meinhold's [theme switcher](https://github.com/mxmeinhold/CSHThemeSwitcher) has been integrated so you can have your ideal profile-stalking experience. New profiles has it all, so [sign up](https://profiles.csh.rit.edu) today!

##My Experience

Prior to writing Profiles, I had never written a single line of Python in my life. I found that I really like using Flask and making web sites do cool things with a real backend framework. I've spent easily 20+ hours just learning things about the language and CSH services. I learned a little bit of Javascript and AJAX in the search and editing functions, as well as using raw LDAP to upload images. The project is in the [profiles repo](https://github.com/ComputerScienceHouse/profiles) in the CSH org github.

##How It's Made

The application has it's own app account that binds to LDAP using the csh\_ldap library. The user's account is used for authentication and verification for controlling what you can see and edit. Unlike old profiles, this app is compatible with the latest version of SSO. Most of the LDAP functions use csh\_ldap but searching and image uploading utilize raw LDAP queries, simply due to the limitations of the library. This version implements all the important features you need from profiles such as viewing, editing, searching, grouping. Planned features include an advanced search option that enables you to filter groups and select search fields, and cover photo support. 

I got a lot of help from people who know what they're doing, and it got me to really appreciate the value of working with people who know much more than I do. Thanks to their help I now feel comfortable working in Flask and Python in general. The project has inspired me to get deeper into learning House systems and updating older services that need work.
