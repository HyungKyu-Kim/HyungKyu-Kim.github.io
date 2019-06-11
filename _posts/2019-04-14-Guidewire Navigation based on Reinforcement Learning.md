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

{% include youtubePlayer.html id="rTzwVTdZ5Ic" %}

\\
Cardiovascular disease takes up a large portion of annual death around the world. 
[WHO announcement](https://www.who.int/news-room/fact-sheets/detail/the-top-10-causes-of-death) shows that ischaemic heart disease is the world’s biggest killer in 2016 and one of the most general treatments for ischaemic heart disease is [Percutaneous Coronary Intervention](https://en.wikipedia.org/wiki/Percutaneous_coronary_intervention). 
But **traditional PCI has several shortages** as follows.
* Huge gap of proficiency and difficult transfer of advanced skill 
* Exposure to harmful radiation generated from angiography
* Long time required(about 1 hour)
 
To overcome these challenges, Medipixel has been collaborating with [Asan Medical Center](http://eng.amc.seoul.kr/gb/lang/main.do) to develop **the world first autonomous PCI robot system**. 
This system autonomously navigates guide wire to the target lesion.
It means that this system plays a role to transfer atypical procedure requiring personal skill and experience to typical procedure.
The **"Standardization of Procedure"** process has advantages such as
* Reduce skill gap between an experienced doctor and a novice doctor
* Reduce exposing time from radiation
* Enable workers to do other tasks
* Reduce time
 
<figure>
  <img src="/images/medipixel/profile_biorobot_animal_ex.png">
  <figcaption>Animal test observation - COPYRIGHT© 2017 Medipixel. All Rights Reserved.</figcaption>
</figure>


##### Challenges
For successful PCI procedure, it is necessary to quantify abstract and complex factors, such as doctor's experience and medical knowledge, as proper numerical values in system. 
Performing this task, we considered the following issues

<div class="container">
    <div class="image">
        <img src="/images/medipixel/profile_biorobot_medicine.png">
    </div>
    <div class="text">
        <h6>Safety</h6>
        <br>
        <ul>
            <li>
                There is possibility that even an unexpected movement of guidewire can cause fatal situation in coronary artery
            </li>
            <li>
                Doctors must be able to monitor and intervene at emergency situation 
            </li>
            <li>
                Intervention of doctor should have short latency
            </li>
        </ul>
    </div>
</div> 

<div class="container"> 
    <div class="image">
        <img src="/images/medipixel/profile_biorobot_robotics.png">
    </div>
    <div class="text">
        <h6>Nonlinearity of manipulation</h6>
        <br>
        <ul>
            <li>
                Friction and twist of wire triggers difference between control input and output
            </li>
            <li>
                Manipulation error in real environment (e.g. wire slip) was another issue in terms of error management
            </li>
            <li>
                Control of deformable body has been a traditional hard problem 
            </li>
        </ul>
    </div>
</div>

<div class="container"> 
    <div class="image">
        <img src="/images/medipixel/profile_biorobot_cag.gif">
    </div>
    <div class="text">
        <h6>Complexity of environment</h6>
        <br>
        <ul>
            <li>
                Coronary arteries have complex physical structure including dynamic status changes like blood flow and heartbeat
            </li>
            <li>
                It is possible that external factors (e.g. condition of patient) make abnormal environment transition  
            </li>
        </ul>
    </div>
</div>    


##### Required Technologies
To undertake the complex project, my team prepared various technologies including medicine, robotics and reinforcement learning. 

* To keep safety, we needed to comprehend medical knowledge for PCI
* To achieve robust control, my team surveyed domains such as Robotics and Elastic Rod
* To ascend accuracy of system, we studied Reinforcement Learning(RL) and Computer Vision Algorithm

<figure>
  <img src="/images/medipixel/profile_biorobot_tech.png" width="95%">
</figure>

###### Why is Reinforcement Learning
Our environment was so complex that we did not have high confidence for traditional control method from robotics.
Since most of the traditional algorithms are static, it has shortages to handle dynamic environment.
Hence, to accomplish the task, we used “interaction algorithm”with the dynamic environment.


<figure>
  <img src="/images/medipixel/profile_biorobot_mdp.gif" width="63%">
</figure>


##### Main Tasks
###### Planning
To solve complex problem, we needed approaches step by step.
Through simplifying problem, we started it from the lowest dimension.
First, I set up project stages as follows
> 2D → 3D → 3D with vibration → Animal → Clinical environment

###### Initiation 
My role in this project was to decided direction of development direction as a development team leader.
I divided complicated main subject into several sub-tasks to materialize a plan.
I performed below tasks in each stage

0. Pre-research: To prepare knowledge for building of system
1. Set-up: To establish all experiments environment
2. Design: To design overall system architecture
3. Implementation: To implement the environment module in RL framework and integrate all modules 


##### Pre-research

###### System Framework
I compared many different architectures for RL control system in real environment.
I researched existing systems published in conferences including [ICRA](https://ieeexplore.ieee.org/xpl/mostRecentIssue.jsp?punumber=8449910), [NEMA](https://www.nema.org/pages/default.aspx) and [Arxiv](https://arxiv.org/). 
[Setting up a Reinforcement Learning Task with a Real-World Robot](https://arxiv.org/abs/1803.07067v1) was one of the most helpful experiment result in terms of understanding 1) relationship between System delays and System performance, 2) training results depending on action space, and 3) hierarchy of system in the real world


###### Medical Knowledge 
We conducted interviews with doctors and researchers who have dealt with coronary artery disease. 
Also, we observed PCI procedure several times and studied on coronary arteries. 
In this process, we obtained knowledge as 1) procedure of PCI, 2) case studies by patient, 3) usage of equipments, 4) terms/abbreviation and 5) Procedure time

<figure>
  <img src="/images/medipixel/profile_biorobot_procedure.png" width="95%">
</figure>


##### Set-up

###### Establishment of experiment plan  
First environment was two dimensional blood vessel model.
I selected equipments for the system and drew a rough sketch of the experiment environment. 
Final expected environment design output is as below.
    <figure>
      <img src="/images/medipixel/profile_biorobot_2d3denv.png" width="90%">
    </figure>

###### Installation of darkroom  
Vision was the most important input data process for this system.
Since vision is sensitive to the change of illumination problem, I had to exclude natural light from experiment environment and darkroom was the best option to handle this problem. 
For the task, I was in charge of purchasing and installing all equipments for the darkroom. 
    <figure>
      <img src="/images/medipixel/profile_biorobot_experiment_env.png" width="90%">
    </figure>

###### Comparison of cameras by latency  
Latency is one of the most significant factors for system performance. 
As a huge proportion of latency depended on camera, I selected a camera model carefully. 
As seen in the figure below, I conducted latency tests and compared scalability, compatibility, resolution and latency of varied camera model.

<figure>
  <img src="/images/medipixel/profile_biorobot_realsense_test.gif" width="65%">
</figure>


##### Design Principles

###### Modularity 
Since this system is capable of having diverse environmental conditions like manipulator and external sensor devices, 
I looked for a way to minimize the number of additional tasks when subsystems or peripherals were changed, and suggested a form on separating the system into submodules by role and made hierarchy among them.

###### Scalability 
As mentioned above, we planned an environment transition step by step. 
Thus, I had to enable smooth conversion among heterogeneous environments such as 2D, 3D, animal and clinic. 
Also, as we needed repetitive experiments for improving system performance like reward shaping, various settings for experiments had to be managed conveniently.
I achieved this purpose via abstract and inheritance structure.

###### Compatibility 
RL algorithm is necessary to be verified based on unit test. 
We used [Atari gym](https://gym.openai.com/envs/#atari) environment for test. 
I also considered standard communication protocol connecting with heterogeneously external devices.
For this reason, I designed this system by using de facto standard systems such as [openai-gym](https://gym.openai.com/) and [ROS](http://www.ros.org/).

<figure>
  <img src="/images/medipixel/profile_biorobot_arch.png">
  <figcaption></figcaption>
</figure>


##### Implementation Issues

###### Handling nonlinearity
There were physical errors during manipulation by motor rotation as many general controlling systems under physical world. 
In coronary artery environment, this kind of errors especially had a worse effect because it requires to handle exquisite unit of space and time. 
I approached this problem in a heuristic way and tried to define error tolerance thresholds because there is no perfect solution for this issue. 
In trial and error process, my team found that using a very small fixed step command(about 0.05mm) guaranteed that guidewire would be less affected by this problem and able to reach a correct position. 

<figure>
  <img src="/images/medipixel/profile_biorobot_slip.png" width="90%">
</figure>

###### Elaborate data flow of inter-module communication   
To set proper shape and size of data, there were several trial and error. 
As shape of data required in each module was different, I pondered on computation cost of reshaping data while a current module was transferring data to next module. 
Also, because RL agent utilized experience replay, limitation of memory size for replay buffer was a big issue. 
Thus, size of state in RL had to be defined properly.

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
Reactivity of system is one of the most critical factors in overall system performance since agile situation awareness and countermeasure were essential in PCI procedure. 
Thus, it was compulsory to minimize latency on each module because summation of delayed time took a huge proportion of reactivity. 
Especially, total latency largely depends on acquisition time of camera image and vision preprocessing time.

<figure>
  <img src="/images/medipixel/profile_biorobot_latency.png" width="95%">
</figure>    

###### Strict exception handling  
It was essential to handle and recover errors that cause harmful results strictly because this system was trained in real environment. 
I handled many abnormal situations like twisted guidewire and path deviation by excessive manipulation. 
Communication manipulator exception was another serious handling point because it could lead system procedure to be halted. 

<figure>
  <img src="/images/medipixel/profile_biorobot_except_twisted.png" width="60%">
</figure>


##### Experiment

###### RL algorithms
My team implemented and numerous experiments with RL algorithms to improve system performance. 
 
* Value based algorithms ([Rainbow dqn](https://arxiv.org/abs/1710.02298), [C51](https://arxiv.org/abs/1707.06887), [IQN](https://arxiv.org/abs/1806.06923))
* Demonstration algorithms ([Deep Q-learning from Demonstrations](https://arxiv.org/abs/1704.03732))
* Reward Shaping
* Data fusion Execution Timing (Early fusion, Late fusion)
* Additional ([Hindsight Experience Replay](https://arxiv.org/abs/1707.01495))

###### Setup
In navigation guidewire problem, selection of correct vessel branch is a main issue.
Thus, we focused on verifying it and designing experiment process.
Setting was below
 
* Max step is 500
* Rewards are imposed by operating time and path correctness 
* Success of episode is to reach the target point within the max step
* Goal positions are as below figure 

<figure>
  <img src="/images/medipixel/profile_biorobot_goals.png" width="60%">
</figure>


##### Conclusion
We made a successful result that guidewire reached basic goals in 2D blood vessel. 
Our navigation system succeeded about 95% to reach goal position.
Currently, my team and  researchers in AMC are writing a research paper targeting [TCT](https://www.crf.org/tct), top tier medical conference. 

###### Success rate
The more training is carried out, the nearer success rate becomes to 1.0.

<figure>
  <img src="/images/medipixel/profile_biorobot_successrate.png">
</figure>

###### Time spent
In early stage training, a wire moves forward regardless of success.
Thus, episode time spent on early stage is short.
However, after evolving period(400~600 step), system has high success rate and takes short time similar to time spent on the early stage.

<figure>
  <img src="/images/medipixel/profile_biorobot_timespent.png">
</figure>


##### Further

###### Possibility to transfer other domain    

Because the skill-set includes controlling deformable medium and setting RL environment for those control system, we can utilize it to other fields.
We are having some meetings with persons from other domain and finding chances to apply our system to their fields.

|Search system | Pipeline integrity inspection | Catheter procedure automation |
|---|---|---|
|<img src="/images/medipixel/profile_biorobot_newdomain0.png">Search system used to locate people in a collapsed building by manipulating wire camera|<img src="/images/medipixel/profile_biorobot_newdomain1.png">Pipeline integrity inspection in a construction site|<img src="/images/medipixel/profile_biorobot_newdomain2.png">Automation of other procedure through wire and catheter|

###### Next Plan
We expect to advance for a new experiment project on 3D environment in the second half of 2019. 
<figure>
  <img src="/images/medipixel/profile_biorobot_3denv.png" width="60%">
</figure>