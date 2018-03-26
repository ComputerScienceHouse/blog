---
layout: post
title: Benchmarking Programing Languages
date: 2018-03-26
categories: projects
description: Testing the speed of separating axis theorem based collision detection in Python, Rust, and Kotlin
author: Joel Eager
author-image: https://avatars1.githubusercontent.com/u/14286106?s=460&v=4
author-bio: A 3rd year CS student at Computer Science House who enjoys messing with Python.
author-email: joel@csh.rit.edu
author-social:
  github: https://github.com/JoelEager
---

Computers do math quite fast, but how fast? Well, the answer to that question changes significantly depending on the 
programming language being used.

To explore this relationship I implemented a common collision detection algorithm called [separating axis theorem](https://gamedevelopment.tutsplus.com/tutorials/collision-detection-using-the-separating-axis-theorem--gamedev-169) 
in Python, Rust, and Kotlin. This algorithm uses linear algebra to check if two convex 2D polygons are overlapping. 
Since this is a linear algebra algorithm most of the work is repetitive arithmetic. This makes it a relatively good 
test of raw execution speed.

[Python](https://en.wikipedia.org/wiki/Python_(programming_language)) is an interpreted language so I can safely assume 
that it will be relatively slow. [Rust](https://en.wikipedia.org/wiki/Rust_(programming_language)), on the other hand, 
is complied down to machine code so it should be quite fast. [Kotlin](https://en.wikipedia.org/wiki/Kotlin_(programming_language)) 
should be somewhere in the middle since its compiled but runs in the Java Virtual Machine instead of directly on the 
hardware.

For this test I measured the wall-clock execution times. Note that this metric has a inherit amount of inaccuracy 
due to the operating system's scheduling. However, it's also the metric that's most immediately understandable so it 
works well for comparisons like this.

The actual program that I'm using takes two objects and sets their center points 100 pixels away from each other. Then 
one object is moved towards the other in steps of 1 unit at a time until the algorithm detects collision. This process 
is then repeated 10,000 times in order to build up a sufficiently long execution time to get an accurate comparision.

Here are the results from running this test. Note how Kotlin and Rust have fairly similar results even though Kotlin 
runs in the JVM.

| CPU used for the test | Time for Python | Time for Kotlin | Time for Rust |
| --------------------- | --------------- | --------------- | ------------- |
| Intel Core i7-8550U   | 21.800 seconds  | 0.308 seconds   | 0.230 seconds |
| AMD A10-6800K         | 40.617 seconds  | 0.767 seconds   | 0.465 seconds |

Now this is a pretty naive implementation. The two objects are 10 and 1 pixels across respectively so for the vast 
majority of the test they're not touching. This algorithm takes the most time to run when the objects aren't touching 
so it would be quite helpful if there was a way to skip over at least some of the cases where they aren't touching. 

It turns out that it's trivial to calculate a rough estimate of the distance between the two objects by taking one point 
from each and applying the Pythagorean theorem. Now this is a rough estimate since it doesn't take into account the 
rotation or shape of the objects in question. However, if that rough separation estimate is greater than the combined 
width of the two objects at their widest points then it is guaranteed that that objects can not be touching. In all 
other cases the program will run the collision detection algorithm as before to get an accurate result.

With this optimization in play the execution times drop significantly. Note that due the the inherit inaccuracy of the 
timing method used the results for Rust on the two computers should be interpreted as roughly equal.

| CPU used for the test | Time for Python | Time for Kotlin | Time for Rust |
| --------------------- | --------------- | --------------- | ------------- |
| Intel Core i7-8550U   | 8.250 seconds   | 0.145 seconds   | 0.033 seconds |
| AMD A10-6800K         | 15.844 seconds  | 0.346 seconds   | 0.027 seconds |

Even though Python is quite slow in comparison to Kotlin and Rust, it turns out that it's still easily fast enough to 
do this math in real time for a game. In fact the very Python code I tested here is used in game server of my [pyTanks](https://github.com/JoelEager/pyTanks.Server) 
project to check for collisions between the game objects. This just goes to show the trade off that exists with 
interpreted languages. While they may be more convenient to work with you're paying the price for that convenience in 
the execution speed.

If you're interested in playing with these programs yourself you can find the Rust version [here](https://github.com/JoelEager/Rust-Collision-Detector) 
and the Kotlin version [here](https://github.com/JoelEager/Kotlin-Collision-Detector). The Python code is part of the 
server portion of my pyTanks project [here](https://github.com/JoelEager/pyTanks.Server). The Python script that 
implements the algorithm is located [here](https://github.com/JoelEager/pyTanks.Server/blob/master/gameLogic/collisionDetector.py) 
in that repository. All of these repositories are under the MIT licence so if you'd like to make use of this code in one 
of your own projects you're more than welcome to.