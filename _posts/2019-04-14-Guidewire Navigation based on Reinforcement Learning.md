---
title:  Guidewire Navigation based on Reinforcement Learning
layout: post
group: Portfolio
organization: Medipixel
thumbnail: https://www.medipixel.io/data/sites/1021/2019/03/A2CCCE9B-2358-4E1B-AD8F-0D69732CB15A.png
permalink: /portfolio/medipixel/guidewire_navigation_based_on_reinforcement_learning
---
The system places stent to the target lesion in the coronary artery via controlling manipulator made by [Asan Medical Center](http://eng.amc.seoul.kr/gb/lang/main.do). 
It is the world first autonomous [PCI](https://en.wikipedia.org/wiki/Percutaneous_coronary_intervention) robot system. 
My team has developed reinforcement learning-based control software. 
This project was awarded first place at [Johnson &amp; Johnson QuickFire Challenge](https://jlabs.jnjinnovation.com/quickfire-challenges/seoul-innovation-quickfire-challenge-robotics-digital-surgery).

<!--break-->

#### My Role
Development Team Leader
  * Design overall system architecture
  * Design data flow in system
  * Design an experiment process
  * Establish experiment environment
  * Implement device communication(manipulator, camera) module
  * Implement reinforcement learning environment module

----
#### Project Detail

{% include youtubePlayer.html id="qN3Mx64z1oM" %}

\\
Cardiovascular disease takes up a large portion of annual death around the world. 
[WHO announcement](https://www.who.int/news-room/fact-sheets/detail/the-top-10-causes-of-death) shows that ischaemic heart disease is the world’s biggest killer in 2016 and one of the most general treatments for ischaemic heart disease is [Percutaneous Coronary Intervention](https://en.wikipedia.org/wiki/Percutaneous_coronary_intervention). 
But **traditional PCI has several shortages** as follows.
* Huge gap of proficiency and hard to transfer high level skill 
* Exposure to harmful radiation generated from angiography
* Long time(about 1 hour)
 
To overcome these challenges, Medipixel has been collaborating with [Asan Medical Center](http://eng.amc.seoul.kr/gb/lang/main.do) to develop **the world first autonomous PCI robot system**. 
This system autonomously navigates guide wire to the target lesion.
It means that this system transfers from atypical procedure depended on personal’s skill and experience to typical procedure. 아직 고쳐야함
This **"Standardization of Procedure"** can take advantages such as
* Reduce gap between an expert and a beginner
* Diminish exposing time from radiation
* Enable workers to do other tasks
* Reduce time
 
<figure>
  <img src="/images/medipixel/profile_biorobot_animal_ex.png">
  <figcaption>Animal test observation - COPYRIGHT© 2019 Medipixel. All Rights Reserved.</figcaption>
</figure>


##### Challenges
While designing project, It was significant issue that researched technologies were apply to the problems that what we encounter.
We needed to know **how to design and quantify intertwined relationship and complex experience**.  

Expert's experience and related knowledge needed to be quantified for determining a proper numerical values in RL system. 
Furthermore, we contemplated mechanism of manipulator movement together for successful training of RL agent.

|Safety | Nonlinearity of manipulation |RL |
|------|------|------|
|<img src="/images/medipixel/profile_biorobot_medicine.png"> Movement of guidewire could cause hazardous situation in coronary artery. 언제든 개입가능하게 | <img src="/images/medipixel/profile_biorobot_robotics.png"> To handle nonlinearity of manipulation, control resolution of step size based on error tolerance was considered | <img src="/images/medipixel/profile_biorobot_rl.png">In RL algorithm, discrete or continuous input types were important criterion to define RL algorithm category such as value-based RL or policy-based RL|  



##### Required Technologies
My team had to prepare various technologies including medicine, robotics and reinforcement learning. 

* To keep safety, it was necessary for my team to comprehend medical knowledge for PCI
* To achieve robust control, my team surveyed domains such as Robotics and Elastic Rod
* To ascend accuracy of system, we studied Reinforcement Learning(RL) and Computer Vision Algorithm in detail  

<figure>
  <img src="/images/medipixel/profile_biorobot_tech.png" width="95%">
</figure>

###### Supplement Medical Knowledge 
We got many interviews with doctors and researchers who involved with coronary artery disease. 
Also, we had PCI observations several times and studied about coronary arteries. 
In these processes, we obtained knowledge like below
* Procedure of PCI
* Case studies by patient
* Usage of equipments
* Terms and Abbreviation
* Procedure time

<figure>
  <img src="/images/medipixel/profile_biorobot_procedure.png" width="95%">
</figure>

###### Why Reinforcement Learning
Our environment, coronary arteries involving dynamic state transition like blood flow and heartbeat, was so complex that we did not have high confidence for traditional control method from robotics.	
Therefore, we needed algorithm to approach a goal by interaction with environment. 

<figure>
  <img src="/images/medipixel/profile_biorobot_mdp.png" width="63%">
</figure>


##### My Main Tasks
My role on this project was to lead direction of development and to materialize a practical plan as a development team leader.
1. Set-up: At the early stage of the project, I first designed and set up all experiments environment.
2. Design: I designed overall architecture of control system by below principle.
3. Implementation: I implemented the environment module in reinforcement learning framework. 
It was a core module to manage and to make every device and robot on this system abstract. 
At the same time, I integrated all modules on this system and implemented functions to improve overall system performance based on designed architecture. 

##### Set-up

###### Establishment of experiment plan  
We started from simple 2D blood vessel model.
I drew a rough sketch of the experiment environment corresponding with experiment process. 
Final expected environment figures are like below.
    <figure>
      <img src="/images/medipixel/profile_biorobot_2d3denv.png" width="90%">
    </figure>

###### Installation of darkroom  
Vision was the most important input data method  of this system.
As vision was sensitive to the change of illumination problem, I wanted to exclude natural light from experiment environment. 
Darkroom was the best option to handle this problem. 
I was in charge of purchasing and installing all equipments for the darkroom. 
    <figure>
      <img src="/images/medipixel/profile_biorobot_experiment_env.png" width="90%">
    </figure>

###### Comparison of cameras by latency  
Latency was one of the most important factors to be considered for system performance. 
As a huge proportion of latency depended on camera, I had to select a camera model carefully. 
I had plentiful latency testings like below figure and compared scalability, compatibility, resolution and latency of varied camera model.

<figure>
  <img src="/images/medipixel/profile_biorobot_realsense_test.gif" width="65%">
</figure>


##### Design

###### Modularity 
Since this system is capable of having diverse environmental conditions like manipulator and external sensor devices, 
I had to consider about minimizing the number of additional tasks when subsystems or peripherals were changed.
I separated the system into submodules by role and made hierarchy among them.

###### Scalability 
As I mentioned above, we planned an environment transition step by step. 
So I had to enable smooth conversion among heterogeneous environments such as 2D, 3D, animal and clinic. 
Also, as we needed repetitive experiments for improving system performance like reward shaping, various settings for experiments had to be managed conveniently.
I achieved this purpose via abstract and inheritance structure.

###### Compatibility 
It was necessary for implementing RL algorithm to verify its own performance through unit test. 
Performance verification ran on  [Atari gym](https://gym.openai.com/envs/#atari). 
And I had to consider standard communication protocol connecting with heterogeneously external devices.
For this reason, I designed this system by using de facto standard systems such as [openai-gym](https://gym.openai.com/) and [ROS](http://www.ros.org/).

<figure>
  <img src="/images/medipixel/profile_biorobot_arch.png">
  <figcaption></figcaption>
</figure>


##### Implement

###### Control nonlinearity
As imprecise manipulation by slip was a big trouble, small fixed control size and value-based RL were picked. 
There were physical errors during manipulation by motor rotation as many general controlling systems under physical world. 
In coronary artery environment, this kind of errors especially had a worse effect because we had to handle exquisite unit of space and time. 
I approached this problem in a heuristic way and tried to define error tolerance thresholds because it was impossible to solve the issue perfectly. 
In trial and error, my team found that using a very small fixed step command(about 0.05mm) guaranteed that guidewire would be less affected by this problem and able to reach a correct position. 
So we decided to use value-based RL algorithm.

<figure>
  <img src="/images/medipixel/profile_biorobot_slip.png" width="90%">
</figure>

###### Elaborate data flow of inter-module communication   
To set proper shape and size of data, there were several trial and error. 
As shape of data required in each module was different, I had to ponder on computation cost of reshaping data while a current module was transferring data to next module. 
Also, because RL agent utilized experience replay, limitation of memory size used for replay buffer was a big issue. 
Therefore, size of state in RL had to be defined properly.

<figure>
  <img src="/images/medipixel/profile_biorobot_data.png" width="70%">
</figure>
    
###### Synchronization between RL agent and manipulator  
RL agent had to obtain necessary data at once for decision making in each time step. 
But as a manipulator was operated in asynchronous method, I had to decide what module should wait and collect data from the manipulator for synchronization. 
I implemented communication module and put this module in charge of that task.

<figure>
  <img src="/images/medipixel/profile_biorobot_sync.png" width="70%">
</figure>

###### Reduction of system latency   
Reactivity of system was one of the most critical factors in overall system performance because agile situation awareness and countermeasure were essential in PCI procedure. 
So, it was compulsory to minimize latency on each module because summation of delayed time took a huge proportion of reactivity. 
Especially, total latency largely depends on acquisition time of camera image and vision preprocessing time.

<figure>
  <img src="/images/medipixel/profile_biorobot_latency.png" width="95%">
</figure>    

###### Strict exception handling  
It was essential to handle and recover errors that cause harmful results strictly because this system was trained in real environment. 
I had to handle many abnormal situations like twisted guidewire and path deviation by excessive manipulation. 
Also, communication manipulator exception was another serious handling point because it could lead to system procedure to halt.

<figure>
  <img src="/images/medipixel/profile_biorobot_except_twisted.png" width="60%">
</figure>


##### Experiment

My team implemented and numerous experiments with RL algorithms to improve system performance. 
Main experimental factors are below
 
* Value based algorithms ([Rainbow dqn](https://arxiv.org/abs/1710.02298), [C51](https://arxiv.org/abs/1707.06887), [IQN](https://arxiv.org/abs/1806.06923))
* Demonstration algorithms ([Deep Q-learning from Demonstrations](https://arxiv.org/abs/1704.03732))
* Reward Shaping
* Data fusion Execution Timing (Early fusion, Late fusion)
* Additional ([Hindsight Experience Replay](https://arxiv.org/abs/1707.01495))


##### Further

###### Possibility to transfer other domain    

PCI is a  high risky procedure with and requiring high skills. 
Therefore, there is a possibility to apply our skill-set in other domains in a relatively easy way.

|Search system | Pipeline integrity inspection | Catheter procedure automation |
|---|---|---|
|<img src="/images/medipixel/profile_biorobot_newdomain0.png">Search system used to locate people in a collapsed building by manipulating wire camera|<img src="/images/medipixel/profile_biorobot_newdomain1.png">Pipeline integrity inspection in a construction site|<img src="/images/medipixel/profile_biorobot_newdomain2.png">Automation of other procedure through wire and catheter|

###### Next Plan
We made a small success that guidewire reached basic goals in 2D blood vessel. 
Now, my team and AMC are writing a research paper targeting top medical journals. 
We are also expected to advance for a new experiment project on 3D environment in the second half of 2019. 
<figure>
  <img src="/images/medipixel/profile_biorobot_3denv.png" width="60%">
</figure>