---
layout: post
title:  Python Neural Net
date:  April 4, 2018
categories: projects
description: A basic neural net that recognizes binary patterns
author: Nick Vaccarello
author-image: https://avatars1.githubusercontent.com/u/32079670?s=400&u=9056d77d53eb2a07e828fcb70adf0893bbce8f21&v=4
author-bio: First year Computer Science major, proud memeber of CSH.
author-email: nickwvac@gmail.com
author-social:
  github: https://github.com/nickvac642
---
When I first had the idea, I came to the consensus to create it from scratch to the best of my ability. This did involve
some tutorial work and research on how nerual nets actually worked inculding the complicated mathmatics behind them. I
started my initial research during the winter break with what a neural net is and how to train them. I researched
algorithms, such as back-propagation and methods to reduce the cost function such as Gradient Decent and Stochastic 
Gradient Decent.

My neural net utilizes Stochastic Gradient Decent which is a varient of Gradient decent that takes mini batches of my 
training data and decides the steps to take to minimize the cost function quickly but less precise than Gradient Decent, 
but with the size and extent of my neural net that sacrifice is justified.

All Methods aside, my neural net in its current state, has the ability to recognize a binary pattern of the users choosing.
An example of one would be a list of binary inputs that map to either a 0 or 1 depending on the location of the 0s or 1s
or even the number of one present in the data, what ever pattern it can train with it and has an average accuracy of about
97%.

Some difficulties I had along the way included understanding the math, which I still do not know to its fullest extent, and
figuring out how to back-propagate my error. It took me about two months after research to have a neural net that 
implements all the neccessary algorithms to effectively train against my data. It wasn't until recently that I carried out
the ability for user input and testing.

Overall I loved learning about how neural nets tick and I have a plethera of paths I want to take with this project
such as refactoring it into a Convolutional neural net, having the user enter in their own training data and expected
value and or reading data in from an outside source.
