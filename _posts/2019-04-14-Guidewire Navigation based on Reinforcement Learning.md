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
It means that this system performs to transfer from atypical procedure depended on personal skill and experience to typical procedure.
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
For successful PCI procedure, It is necessary to quantify abstract and complex factors, such as doctor's experience and medical knowledge, as proper numerical values in system. 
Performing this task, we should consider the following issues

<div class="posts__item">
    <img style="float: left; margin-right: 4%; margin-bottom: 1%;" src="/images/medipixel/profile_biorobot_medicine.png" width="35%">
    <h6>Safety</h6>
    <div class="challenge">
        <ul>
            <li>
                There is possibility that movement of guidewire causes hazardous situation in coronary artery
            </li>
            <li>
                Doctors must enable to monitor and intervene at emergency situation 
            </li>
            <li>
                Intervention of doctor should have short latency
            </li>
        </ul>
    </div>
</div> 

<div class="posts__item"> 
    <img style="float: left; margin-right: 4%; margin-bottom: 1%;" src="/images/medipixel/profile_biorobot_robotics.png" width="35%">
    <h6>Nonlinearity of manipulation</h6>
    <div class="challenge">
        <ul style="vertical-align: middle;">
            <li>
                Friction and twist of wire triggers difference between control input and output
            </li>
            <li>
                Manipulation slip of wire is big issue also
            </li>
        </ul>
    </div>
</div>

<div class="posts__item"> 
    <img style="float: left; vertical-align; margin-right: 4%;" src="/images/medipixel/profile_biorobot_cag.gif" width="35%">
    <h6>Complexity of environment</h6>
    <div class="challenge">
        <ul style="vertical-align: middle;">
            <li>
                Coronary arteries is complex environment that involves dynamic status changes like blood flow and heartbeat
            </li>
            <li>
                 It is possible that external factor like condition of patient makes abnormal environment transition  
            </li>
        </ul>
    </div>
</div>    


##### Required Technologies
To undertake complex project, my team prepared various technologies including medicine, robotics and reinforcement learning. 

* To keep safety, it needed to comprehend medical knowledge for PCI
* To achieve robust control, my team surveyed domains such as Robotics and Elastic Rod
* To ascend accuracy of system, we studied Reinforcement Learning(RL) and Computer Vision Algorithm

<figure>
  <img src="/images/medipixel/profile_biorobot_tech.png" width="95%">
</figure>

###### Why is Reinforcement Learning
Our environment was so complex that we did not have high confidence for traditional control method from robotics.
Because most of that algorithms were static method, it had shortage to handle dynamic environment.
Therefore, we needed algorithm to approach a goal by interaction with environment.

<figure>
  <img src="/images/medipixel/profile_biorobot_mdp.gif" width="63%">
</figure>


##### Main Tasks
###### Planning
To solve complex problem, we needed approaches by stages.
Through simplifying problem, we started at the most low dimension.
I planned this project like
> 2D → 3D → 3D with vibration → Animal → Clinical environment

###### Set to work
My role on this project was to lead direction of development as a development team leader.
I divided complicated main subject as sub task to materialize a plan.
I performed below tasks in each stage

0. Pre-research: I prepared knowledge for building of system
1. Set-up: I established all experiments environment
2. Design: I designed overall system architecture
3. Implementation: I implemented the environment module in RL framework and integrated all modules 


##### Pre-research

###### System Framework
I compared many other architectures of RL control system in real environment.
I researched preexistence system published in conferences including [ICRA](https://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=8449910), [NEMA](https://www.nema.org/pages/default.aspx) and [Arxiv](https://arxiv.org/). 
[Setting up a Reinforcement Learning Task with a Real-World Robot](https://arxiv.org/abs/1803.07067v1) was one of the most helpful experiment result.

###### Medical Knowledge 
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


##### Set-up

###### Establishment of experiment plan  
First environment was two dimensional blood vessel model.
I selected equipments of system and drew a rough sketch of the experiment environment. 
Final expected environment figures were as below.
    <figure>
      <img src="/images/medipixel/profile_biorobot_2d3denv.png" width="90%">
    </figure>

###### Installation of darkroom  
Vision was the most important input data method  of this system.
Since vision is sensitive to the change of illumination problem, I had to exclude natural light from experiment environment and darkroom was the best option to handle this problem. 
I was in charge of purchasing and installing all equipments for the darkroom. 
    <figure>
      <img src="/images/medipixel/profile_biorobot_experiment_env.png" width="90%">
    </figure>

###### Comparison of cameras by latency  
Latency is one of the most important factors to be considered for system performance. 
As a huge proportion of latency depended on camera, I selected a camera model carefully. 
As seen in the figure below, I conducted latency tests and compared scalability, compatibility, resolution and latency of varied camera model.

<figure>
  <img src="/images/medipixel/profile_biorobot_realsense_test.gif" width="65%">
</figure>


##### Design Principles

###### Modularity 
Since this system is capable of having diverse environmental conditions like manipulator and external sensor devices, 
I considered about minimizing the number of additional tasks when subsystems or peripherals were changed.
I separated the system into submodules by role and made hierarchy among them.

###### Scalability 
As I mentioned above, we planned an environment transition step by step. 
Thus, I had to enable smooth conversion among heterogeneous environments such as 2D, 3D, animal and clinic. 
Also, as we needed repetitive experiments for improving system performance like reward shaping, various settings for experiments had to be managed conveniently.
I achieved this purpose via abstract and inheritance structure.

###### Compatibility 
It was necessary for implemented RL algorithm to be verified based on unit test. 
We used [Atari gym](https://gym.openai.com/envs/#atari) environment for test. 
And I considered standard communication protocol connecting with heterogeneously external devices.
For this reason, I designed this system by using de facto standard systems such as [openai-gym](https://gym.openai.com/) and [ROS](http://www.ros.org/).

<figure>
  <img src="/images/medipixel/profile_biorobot_arch.png">
  <figcaption></figcaption>
</figure>


##### Implementation Issues

###### Handling nonlinearity
There were physical errors during manipulation by motor rotation as many general controlling systems under physical world. 
In coronary artery environment, this kind of errors especially had a worse effect because it requires to handle exquisite unit of space and time. 
I approached this problem in a heuristic way and trying define error tolerance thresholds because there is no perfect solution for this issue. 
In trial and error, my team found that using a very small fixed step command(about 0.05mm) guaranteed that guidewire would be less affected by this problem and able to reach a correct position. 
So we decided to use value-based RL algorithm.

<figure>
  <img src="/images/medipixel/profile_biorobot_slip.png" width="90%">
</figure>

###### Elaborate data flow of inter-module communication   
To set proper shape and size of data, there were several trial and error. 
As shape of data required in each module was different, I pondered on computation cost of reshaping data while a current module was transferring data to next module. 
Also, because RL agent utilized experience replay, limitation of memory size used for replay buffer was a big issue. 
Therefore, size of state in RL had to be defined properly.

<figure>
  <img src="/images/medipixel/profile_biorobot_data.png" width="70%">
</figure>
    
###### Synchronization between RL agent and manipulator  
RL agent needs to obtain necessary data at once for decision making in each time step. 
But as a manipulator was operated in asynchronous method, I decided what module should be-waited and collected data from the manipulator for synchronization. 
I implemented communication module and put this module in charge of that task.

<figure>
  <img src="/images/medipixel/profile_biorobot_sync.png" width="70%">
</figure>

###### Reduction of system latency   
Reactivity of system is one of the most critical factors in overall system performance because agile situation awareness and countermeasure were essential in PCI procedure. 
Thus, it was compulsory to minimize latency on each module because summation of delayed time took a huge proportion of reactivity. 
Especially, total latency largely depends on acquisition time of camera image and vision preprocessing time.

<figure>
  <img src="/images/medipixel/profile_biorobot_latency.png" width="95%">
</figure>    

###### Strict exception handling  
It was essential to handle and recover errors that cause harmful results strictly because this system was trained in real environment. 
I handled many abnormal situations like twisted guidewire and path deviation by excessive manipulation. 
Also, communication manipulator exception was another serious handling point because it could lead to system procedure to halt.

<figure>
  <img src="/images/medipixel/profile_biorobot_except_twisted.png" width="60%">
</figure>


##### Experiment

My team implemented and numerous experiments with RL algorithms to improve system performance. 
Main experimental factors are as below
 
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