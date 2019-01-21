---
layout: post
title: Rust Web Server (RWS)
date: 2017-11-30
categories:
    - projects
description: A web server made in Rust
image: https://csh.rit.edu/~calvin/RWS.png
image-sm: https://csh.rit.edu/~calvin/RWS.png
author: Calvin Clark
author-image: https://avatars1.githubusercontent.com/u/24570509?s=460&v=4
author-bio: A Second Year Software Engineering Student and CSH Public Relations Director
author-email: calvin@csh.rit.edu
author-social:
    github: https://github.com/calvin-clark
---
The [Rust Web Server (RWS)](https://github.com/calvin-clark/rust-webserver) is a Rust program that manually creates HTTP requests that contain HTML files and sends them to a specified port, which displays them on that port in a web browser.  It is based on the tutorial in [The Book](https://doc.rust-lang.org/book/second-edition/), but with added functionality to gracefully shutdown on a CTRL+C exit from the program, and more thorough error handling and error messages.

RWS is the first project I have created in Rust.  To create this project, I had to learn Rust from the absolute basics, and I also learned a lot about web servers and network protocols.  The server uses a contained ThreadPool struct to process incoming requests, which contains a specified maximum number of waiting threads for processing requests.  These threads each create a new HTTP request based on the URL requested by the user, and write that new request (which contains a byte representation of an HTML file stored on the server) to the TcpStream bound to the specified port.  This provides multithreaded functionality, which allows multiple connections to be processed at once, while decreasing the likelihood of newly created threads overloading the system.

In the future, I would like to improve a few aspects of this program.  First, I would like to implement more thorough error handling, since the current program will panic on certain errors and simply display an error message to the user.  I would also like to add to the contained HTML files so it displays a website that is more useful than a simple example page.  Overall, I learned a lot about Rust and web server functionality from this project, and I hope to use that knowledge to help me with other projects in the future!

