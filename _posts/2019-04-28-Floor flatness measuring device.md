---
title: Floor flatness measuring device
layout: post
group: Portfolio
organization: Private
thumbnail: https://image.freepik.com/free-vector/programmer-s-workplace-writing-code-laptop_80328-238.jpg
permalink: /portfolio/private/flatness
---

To solve floor flatness problem in construction site, I have been making device to check flatness level.
It needs to converge technologies including LIDAR and SLAM.
This is ongoing project.

<!--break-->

#### My Role
Main developer
  * Design device concept
  * Implement LIDAR 
  * Implement 

---

#### Project Detail

In many construction site, floor leveling is hard to handle perfectly.
It is caused by problems including wrong concrete pouring and uneven base ground.
Especially, this uneven floor makes issues such that floor coating becomes poor looking shapes and special facilities required strict environment(e.g. distribution center, precision manufacture) have improper ground state to install equipments.

<figure>
  <img src="/images/private/comparison_flat.PNG" width="90%">
</figure>

Many construction companies try to fix this problem by various method.
One of general solution is to use grinding machine.
Running grinding machine, it is determined from experience of operator that  how many amount of ground will be grinded.

In this process, it is shortage that task depends on personal skill based on eye measurement and there is not any numerical clue what they did. 
Thus, if there is way to **support flatness measurement task through quantifying atypical image data and visualizing data**, work efficiency and reliability can be increased.
I made a team with my friend and undertook to solve this problem.

<figure>
  <img src="/images/private/flat_grinding.PNG">
</figure>

##### Requirements

At the beginning of project, My team investigated requirements from field workers firstly.
To acquire sufficient information, we interviewed with them in many other perspectives.

The main questions are as follow
1. How whole process is preceded
2. How long time takes during task
3. 

Answers
>


##### Concept
On the Basis of gathered requirements, I made basic principles of device.

1. Reasonable price
2. Easy to use
3. Short measurement time


##### Research

There are many sensors used for obtaining space information.
Since most of them have linear correlation between price and accuracy, we need to find proper degree.
We decide to start from LIDAR sensor because it has reasonable price and accuracy.

Furthermore, to get spatial map, it is necessary to choose method to build map by data from sensors.
Thus, we study about SLAM.