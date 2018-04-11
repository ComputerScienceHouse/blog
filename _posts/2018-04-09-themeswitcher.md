---
layout: post
title: ThemeSwitcher
date: 2018-04-09
categories:
    - projects
description: A webservice that allows a user to select a bootstrap theme and an api to serve that theme to other sites that desire to implement themeswitcher.
author: Max Meinhold
author-image: https://members.csh.rit.edu/~mom/momProfileSmall.jpeg
author-bio: Freshman Computer Science Major at RIT and Computer Science House
author-email: mxmeinhold@csh.rit.edu
author-social:
    github: https://github.com/mxmeinhold
---

[Themeswitcher](https://themeswitcher.csh.rit.edu) is a service that allows a user to select a bootstrap theme to be applied across the various internal CSH services.

Most CSH services are written in Python with Flask.
In fact, when I went through most of the CSH services I could think of, __ALL__ of them were written with Flask.
Which is why Themeswitcher is written with Node.js.

Themeswitcher uses Node.js to serve an API for a Mongo database.
A user selects their theme on the Angular based front end, which displays examples of that theme and stores their selection.

When another service wishes to load a user's theme, it must simply make a style reference to `themeswitcher.csh.rit.edu/api/get` and the logged in user's theme will be returned as a redirect to s3.
Themeswitcher requires SSO on principle, so it can determine who's theme to return.
