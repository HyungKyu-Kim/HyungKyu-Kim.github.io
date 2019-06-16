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
This is an ongoing project.

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
Especially, this uneven floor makes issues such that floor coating becomes poor looking shapes and special facilities where strict environment is required (e.g. distribution center, precision manufacture) cannot have proper ground state to install equipment.

<figure>
  <img src="/images/private/comparison_flat.PNG" width="90%">
</figure>

Many construction companies try to fix this problem by various methods.
One of general solutions is to use grinding machine.
Running grinding machine, operator needs to have sufficient experience to determine how much grinding should be done in order to make the ground even.

In this process, there are two drawbacks that success of grinding depends on personal skill based on eye measurement and no numerical value can be assigned to what an operator did. 뒷부분 
Thus, if there is a way to **support flatness measurement task through quantifying atypical image data and visualizing data**, work efficiency and reliability can be increased.
I made a team with my friend and undertook to solve this problem.

<figure>
  <img src="/images/private/flat_grinding.PNG">
</figure>

##### Requirements

At the beginning of project, my team investigated requirements from field workers at first.
To acquire sufficient information, we interviewed in many ways.

###### 1. How accurate should a sensor 
**Answer** There is no exact numerical criterion. 
In the present process, since most workers check flatness based on eye measurement, result vary by people. 
But, I think that it is necessary for the sensor to be accurate enough to determine whether it would be flat enough to install precision equipment.
It might be about 3mm.  
**Reqirements** It is necessary for the sensor to check under 3mm.

###### 2. How long time takes during mesurement
**Answer** Since measurement does not need any additional devices and dust collector is used in grinding process, Measurement process progresses with grinding process concurrently.
But as correct ground information map is important, if it is needed extra process to measure and map ground information, we can put additional time and human resources.  
**Reqirements** There is possibility to occur measurement error in concurrent process. 
Thus, we use approach to extra measurement processes firstly.

###### 3. How much budget that we can use to make device is proper  
**Answer** Most of machines in construction site have a tendency to be high price because they have to get high endurance and reliability. 
Becuase there is no standard device to measure, we cannot say baseline price. 
Of course, if device has high accuracy with low price, it is the best.  
**Reqirements**  

###### Concept
On the Basis of gathered requirements, I made basic principles of device.

1. Reasonable price
2. Easy to use
3. Short measurement time


##### Research

There are many sensors used for obtaining space information.
Since most of them have a positive correlation between price and accuracy, we need to find a compromise.
As task sites can be both inside and outside, there is a huge possibility that can be affected by variance of illuminate condition. 
Therefore, photogrammetry was excluded in selection and we decided to start from LIDAR sensor because it has reasonable price and accuracy.

Furthermore, to get spatial map, it is necessary to choose a method to build map by data from sensors.
Thus, we study about SLAM.