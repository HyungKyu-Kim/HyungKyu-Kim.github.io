---
title:  Lung Cancer Diagnosis Clinical Decision Support System
layout: post
group: Portfolio
organization: Medipixel
thumbnail: /images/medipixel/mp_screen_shot.png
permalink: /portfolio/medipixel/lung_cancer_diagnosis_clinical_decision_support_system
---
The purpose of the system is to help doctors make a decision on diagnosis of lung cancer. It supports diagnosis by deep learning based detection and classification nodules.

<!--break-->

#### My Role
Project Leader
  * Design a whole data pipeline
  * Implement [DICOM](https://en.wikipedia.org/wiki/DICOM)-based data preprocessing module
  * Design and implement 3D U-net based detection neural network
  * Design and implement 3D Resnet based classification neural network

----
#### Project Detail

![Alt text](/images/medipixel/mp_screen_shot.png)
Lung cancer is placed in a top position in cancer death rate. 
In 2015 total 17,399 people died by lung cancer in Korea. 
It was so high that this portion took 27.9% in the total amount of cancer deaths. 
The reason why lung cancer has high death rate is that efficient inspection process does not exist. 

In the light of sharing experience that accumulated over time, decision support system based on AI is widely adopted in various industrial fields. 
In medical domain, the need of rapid and precise diagnosis decision is intensifying. 
Therefore, this kind of system is being researched by many scientist. 
Medipixel’s lung cancer project was designed to fulfill those needs. 
We co-worked with [Asan Medical Center](http://eng.amc.seoul.kr/gb/lang/main.do) and ended up developing Lung Cancer Diagnosis Clinical Decision Support System.

It takes the following advantages
* Detect nodules that can be missed → increased diagnosis accuracy 
* Assist doctors to read chest ct scan at ease → increased diagnosis productivity

![Alt text](/images/medipixel/mp_chest_system.png)

##### System Features
This system features are below
* Support diagnosis whether nodule is malignant or benign 
* Handle non-small cell lung cancer nodule in 10mm~30mm range
* Show the number of nodules and nodule region of interests
* Indicate estimated lung cancer risk percentage



![Alt text](/images/medipixel/mp_chest_gui.png)

##### Tasks
I was involved in this project as a project leader. 
I was in charge of designing overall process and data flow. 
Initial conditions of the project were not sufficient. 
My team consisted of just 3 members including junior engineer.
Furthermore there were many instances of lost time while my team was preparing for this project. 
As we had limited time and resources, I had to specify what we were supposed to to and what we were not supposed to do.

I decided to approach this project in practical view. 
Most of processes in deep learning system are formulaic, I did not put many effort to design a system structure. 
Also making totally new model were excluded from selections. Instead of it, we put more time to find high performance model adopted in medical domain and improve that model. 


##### Dataset 
It is one of the most important issues in deep learning system to gather and handle proper dataset.
We utilized several dataset of hospitals involved with [Asan Medical Center](http://eng.amc.seoul.kr/gb/lang/main.do) and open dataset like [NLST](https://biometry.nci.nih.gov/cdas/nlst/) to improve performance of the system. 
There were some issues with datasets below
* Data format was different(especially open data-set)
* Data modality like resolution of CT was different
* The number of malignant nodules was so overwhelmingly numerous than benign nodules
* It was hard to find totally negative data which did not have any nodule

###### Preprocess
We had to preprocess heterogeneous set through one pipeline.
Basically, it was necessary to reconstruct and normalize from 2d DICOM slices to 3d voxel data. 
As this task was expected to take a long time, it had to be done in advance, and results must be saved in hard disk before regular training.
Main process was like below.
* Perform 3D reconstruction with thickness of 1mm
* Set Hounsfield Unit between -1200 and 600
* Normalize each pixel value between 0 and 255

<figure>
  <img src="/images/medipixel/mp_net_preprocess0.png" width="80%">
  <figcaption></figcaption>
</figure>

Rather than using the whole voxel data, it was divided into chunks of specific size, and those chunks were used because of GPU memory limitation. 
This process occurred in training and inference routine.

<figure>
  <img src="/images/medipixel/mp_net_preprocess1.png" width="68%">
  <figcaption></figcaption>
</figure>


###### Gathering Dataset  
To improve performance, we needed to obtain more dataset from various source.
This process collecting proper data for model needed huge time cost for doctors. 
Especially, data labeling was a big overload because it was handcrafted task to segment the region of nodule in pixel by pixel.

we put many effort to help them.
Key was a efficiency and decrease  of time consuming. 
We had several meeting with doctors and proposed useful methods like nodule segmentation support application and semi-auto segmentation for nudule data.  
<figure>
  <img src="/images/medipixel/mp_chest_data0.jpg">
  <figcaption></figcaption>
</figure>


##### Deep Learning Network
In researching period I realized that ensemble strategy was efficient to improve whole system accuracy. 
So, I got many experiments using various models and tried to find optimal combination. 
In result we fixed to use three DNN networks in the system.

###### Detection-network
This network detects nodules. 
It is built based on 3d U-net. 
Detection network consists of encoding and decoding network. 
Nodule’s features are extracted in encoding network through 3D residual blocks.

<figure>
  <img src="/images/medipixel/mp_net_detection-net.png" width="70%">
  <figcaption></figcaption>
</figure>

###### Segmentation-network
This network performs segmentation of nodules in each slide based on the results from detection network. 
Its second role is to perform as a filter for false-positive regions.
Our segmentation-network is taking advantage of [Deeplab-v3+](https://arxiv.org/abs/1802.02611) network whose network structure is shown in figure below
<figure>
  <img src="/images/medipixel/mp_net_segmentation-net.png" width="70%">
  <figcaption></figcaption>
</figure>

###### Classification-network 
Classification-network is responsible for determining the degree of malignancy of candidate nodules. 
Features of nodules are extracted through 3D residual network layer, and we come up with final result through the features.
<figure>
  <img src="/images/medipixel/mp_net_classification-net.png" width="70%">
  <figcaption></figcaption>
</figure>

##### Practical Technique
In addition, I added simple preprocess stage before segmentation stage to get rid of nodules in outer body.
This stage was composed of simple method that just checked the largest contour and eroded it.
It mapped candidate nodule region onto 2D slide, and examined whether it belongs to inside of the body, and regions outside of the body were removed as false-positives.
This method had some advantages over other methods that performed complicated lung-segmentation as follows
* It is much faster than conventional segmentation method via complex algorithm
* It removes a ordinary lung-segmentation algorithm problem that recognizes nodule on the wall as outside the lung
* It solves region segmentation error resulting from different modality such as different CT slide scanner

<figure>
  <img src="/images/medipixel/mp_net_trick.png" width="70%">
  <figcaption></figcaption>
</figure>

##### Strengths of The Structure
Generally, most systems in cancer diagnosis had similar structure. 
Among of them combinations with U-net based detector and classifier were popular solution. 
**I embedded simple preprocess stage and segmentation network** in center of it. 
Network mapped 3d suspicious chunks to 2d ct slice, at the same time this stage that performed to segment area in suspicious chunks meant scrutinizing and filtering nodules. 
So, I was able to **remove many false positive nodules** from results from first stage. 
From those features, the system got simple but powerful improvement.

![Alt text](/images/medipixel/mp_chest_models.png)

##### Conclusion
https://link-springer-com.proxy1.cl.msu.edu/article/10.1007%2Fs00330-009-1596-y
https://link-springer-com.proxy1.cl.msu.edu/article/10.1007%2Fs00330-007-0667-1
Through processes mentioned above, it was possible to achieve results that reduce time of the whole diagnosis dramatically while maintaining a useful performance.

<figure>
  <img src="/images/medipixel/mp_chest_auc.png" width="60%">
  <figcaption></figcaption>
</figure>

TSNE result was like below
![Alt text](/images/medipixel/mp_chest_tsne.png)

----

##### Patent
[1] Pathological diagnosis method and apparatus based on machine learning KR, P2018-0173475