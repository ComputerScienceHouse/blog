---
layout: post
title: ThemeSwitcher
date: 2018-04-09
image: https://csh.rit.edu/~mom/themeswitcher.png
categories:
    - projects
description: A webservice that allows a user to select a Bootstrap theme and an api to serve that theme to other sites that desire to implement themeswitcher.
author: Max Meinhold
author-image: https://csh.rit.edu/~mom/momProfileSmall.jpeg
author-bio: Freshman Computer Science Major at RIT and Computer Science House
author-email: mxmeinhold@csh.rit.edu
author-social:
    github: https://github.com/mxmeinhold
---

[Themeswitcher](https://themeswitcher.csh.rit.edu) is a service that allows a user to select a Bootstrap theme to be applied across the various internal CSH services.

Most CSH services are written in Python with Flask, which is why Themeswitcher is written with Node.js.
When I went through most of the CSH services I could think of, __ALL__ of them were written with Flask, so I took the opportunity to both learn something new and provide an example of another way to make and API.

Themeswitcher's API is written using Node.js Express to provide endpoints for a Mongo database.
A user selects their theme on the Angular based front end, which displays examples of that theme and stores their selection.

When another service wishes to load a user's theme, it must simply make a style reference to `themeswitcher.csh.rit.edu/api/get` and the current user's theme will be returned as a redirect to CSH S3.
The user is determined using CSH SSO, so Themeswitcher uses Express' `next()` functionality to provide a default theme before enforcing login (pictured below).
This route also handles the edge case of SSO failing to communicate with themeswitcher, allowing services to still have CSS in the event of an outage.
```javascript
// If no user is logged in, redirects to the default theme.
app.get('/api/get', function(req, res, next) {
  if(req.user) next(); // Passes to standard get
  else res.redirect(getTheme(process.env.DEFAULT_CSS).cdn);
});
```
