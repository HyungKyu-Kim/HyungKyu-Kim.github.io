---
title: Floor flatness measuring device
layout: post
group: Portfolio
organization: Private
thumbnail: /images/private/flat_map.png
permalink: /portfolio/private/flatness
---

To solve floor flatness problem in construction site, I have been making device to check flatness level.
It needs to converge technologies including LIDAR and SLAM.
This is an ongoing project.

<!--break-->

#### My Role
Main developer
  * Analyze requirements
  * Design device concept
  * Design system architecture
  * Implement system

---

#### Project Detail

In many construction site, floor leveling is hard to handle perfectly.
It is caused by problems including wrong concrete pouring and uneven base ground.
Especially, this uneven floor makes issues such that floor coating becomes poor looking shapes and special facilities where strict environment is required (e.g. distribution center, precision manufacture) cannot have proper ground state to install equipment.

<figure>
  <img src="/images/private/flat_comparison.PNG" width="90%">
</figure>

Many construction companies try to fix this problem by various methods.
One of general solutions is to use grinding machine.
Running grinding machine, operator needs to have sufficient experience to determine how much grinding should be done in order to make the ground even.

In this process, there are two **drawbacks** that
 
* Success of grinding depends on personal skill based on eye measurement 
* There is no quantified measurement system on how much an operator levels the ground off
 
Thus, if there is a way to **support flatness measurement task through quantifying atypical image data and visualizing data**, work efficiency and reliability can be increased.
I made a team with my friend and undertook to solve this problem.

<figure>
  <img src="/images/private/flat_grinding.PNG">
</figure>


##### Planning

This project is just first stage.
Start from this project, final purpose that we want to achieve is to improve all procedure of floor leveling. 
Because it is hard to improve all procedure of floor leveling at once, we established three big stages.
Briefly, we approach the goal by below methods

* Quantify atypical data
* Gather data
* Evaluate tasks
* Improve equipment

###### 1. Measurement and Visualization
First of all, we need to acquire precise spatio map. 
Only if we obtain clear data, it is possible to progress rest of procedure based on quantified indicator.

<figure>
  <img src="/images/private/flat_map.png" width="50%">
</figure>

###### 2. Gathering Field Data
If it is possible to provide clear spatio map data, gathering meaningful data from field is feasible.
First, we can calculate score of flatness from measuring data via several evaluating standard of floor flatness.
Second, we can evaluate result of field workers by difference of measuring map data between before task and after task.

Also, we are going to collect additional data including path of grinding machine in field, material of ground and information of workers. 

Analyzing these data, we decide what is the best task that was done by worker and way how to operate for grinding. 
Furthermore, through best method, it is possible to provide driving guidelines of grinding machine for field workers.

<figure>
  <img src="/images/private/flat_data.png" width="90%">
</figure>

###### 3. Improvement of Grinding Machine
From accumulated data, we expect to find improvable point of grinding machine because present machine has a shortage that it is hard to work in detailed part.
This process includes designing new machine and numerous experiment.

<figure>
  <img src="/images/private/flat_grinder.png" width="50%">
</figure>

##### Requirements

At the beginning of project, my team investigated requirements from field workers at first.
To acquire sufficient information, we interviewed in many ways.

###### How accurate should a sensor be?
> There is no exact numerical criterion. 
In the present process, since most workers check flatness based on eye measurement, it might vary by people.
But, I think that it is necessary for the sensor to be accurate enough to determine whether it would be flat enough to install precision equipment.
It might be about 3mm.

**☛ Reqirements:** Sensor should enable to check under 3mm.  
<br/>

###### How long does it takes to measure flatness?
> Currently, we do not spend extra flatness measurement time.
But as correct ground information map is important, if it is needed extra process to measure and map ground information, we can put additional time and human resources.
In this regard, we request to minimize measurement time as possible because there are other processes in whole procedure.

**☛ Reqirements:** Measurement time should be minimized as possible.  
<br/>

###### How much budget to make device proper is?
> Average budget of procedure is about 0000 and assigned budget on usage of equipment is about 0000.
So, we wish the price of measurement device about 0000.
  
**☛ Reqirements:**  Device development cost should be under 0000.


##### Research

There are many sensors used for obtaining space information.
Since most of them have a positive correlation between price and accuracy, we need to find a compromise.
As task sites can be both inside and outside, there is a huge possibility that can be affected by variance of illuminate condition. 
Therefore, photogrammetry was excluded in selection and we decided to start from [Light Detection And Ranging](https://en.wikipedia.org/wiki/Lidar)(LIDAR) sensor because it has reasonable price and accuracy.

<figure>
  <img src="/images/private/flat_LiDAR.jpeg" width="70%">
</figure>

Furthermore, to get spatial map, it is necessary to choose a method to build map by data from sensors.
Thus, we study about [Simultaneous Localization And Mapping](https://en.wikipedia.org/wiki/Simultaneous_localization_and_mapping)(SLAM).

<figure>
  <img src="/images/private/flat_SLAM.png" width="70%">
</figure>