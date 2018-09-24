---
layout: post
title: System Information with Rust
date: 2018-04-10
categories:
    - projects
description: A Rust library that returns information about the local system it's running on.
author: Jack Sauriol
author-image: https://avatars0.githubusercontent.com/u/11964990?s=400&u=9130317fb4317fd97f55b3531497d491dc561dca&v=4
author-bio: First year member of Computer Science House, Computing Security student at RIT
author-email: saurioljohn@gmail.com
author-social:
    github: https://github.com/sauriol
    linkedin: https://www.linkedin.com/in/john-sauriol-a4155514a/
---

# Description #
System Information is a library written in Rust that returns certain information about your local system.
It supports various Linux distros, Mac OS, and Windows.
Currently, it can get information about the current user, the hostname, the operating system, the disk, memory, and the CPU.
Additionally, it can present the disk and memory information in raw number of bytes or a human readable format.


# Specifics #
System Information uses Rust's conditional compilation feature, so it compiles different versions of functions and their helper functions depending on the operating system it's running on.
This allowed me to compile the library with different dependencies and other libraries depending on the operating system.


## Linux ##
I decided to create this library because I was unhappy with what I had found with other similar libraries.
All that I found used commands that didn't exist on my system, so I decided to try to make one avoiding commands that didn't necessarily exist.
System Information either uses commands that are part of the coreutils package or reads from a file to get information.


## Mac OS ##
Mac OS is far more consistent than Linux so I felt a little more free to use commands to get information.
Specifically, the `sysctl` command is used to get hardware information.


## Windows ##
Windows was far more difficult than Mac OS and Linux.
Luckily, windows.h is an excellent Windows-specific header file for C and C++, so anything I couldn't do in Rust I was able to do by writing a C++ program that would output the desired information and then capturing that output in Rust.

