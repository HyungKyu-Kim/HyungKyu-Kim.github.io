---
title: Shape changing robot system
layout: post
group: Portfolio
organization: Seoul National University
thumbnail: /images/snu/20240126 TCTabstract_Robot_RL figure_update.png
permalink: /portfolio/snu/shape_changing_robot_system
---

This system alters the robot's morphology to minimize drag forces in environments with flowing currents. 
My team developed RL(Reinforcement Learning)-based control software. 
Additionally, to address the challenges of real-world learning in aquatic environments, we implemented a fluid simulator for use in the learning environment.

<!--break-->

#### My Role
System main engineer
  * Developed fluid simulator based on hydrodynamics model(PCISPH)
  * Developed robot control system based on reinforcement learning 


----
#### Project Detail

At SNU, my team aims to demonstrate the concept that the robot system can transform into the most appropriate form using contextual knowledge. 
To achieve this, we developed a robot system with the ability to attain the desired drag force in diverse fluid environments. 
For example, in front-flow situations, the robot might transform into a sharp form to decrease drag force. 
In contrast, the robot uses a flat form transformation to harness back-flow forces. 
With shape-changing capabilities, we anticipate that the robot can adapt to dynamic environments.

{% include youtubePlayer.html id="1imlCMfr4mI" %}

We employed reinforcement learning to enable the system to learn how to transform the appropriate shape. 
Additionally, to reduce the burden of continuous exposure of the actual robot to aquatic environments during experiments, we implemented a ROS(Robot Operating System)-based fluid simulator. 
Customizing the Gazebo physics engine for ROS using the PCISPH (Predictive-corrective incompressible smoothed particle hydrodynamics) model, we developed a robot simulator.
