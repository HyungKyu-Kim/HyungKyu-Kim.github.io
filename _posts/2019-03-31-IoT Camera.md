---
title:  IoT Camera
layout: post
group: Portfolio
organization: Samsung Techwin
thumbnail: /images/samsung/profile_htw_iot2.png
permalink: /portfolio/samsung/iot_camera
---
This new type of product is a network camera working as IoT gateway. 
It gathers sensor data and provides various service, such as social protection service, fire monitoring service and missing child prevention service, by cooperating with adjacent IoT devices.

<!--break-->

#### My Role
Network camera main developer at task force team
* Implement Bluetooth communication module between network camera and devices
* Implement communication module with IoT server(RESTful)
* Implement serial communication module(rs-485) 

----

#### Project Detail

Smart city is a fast-growing tech domain nowadays, and it is hard to imagine the smart city without IoT.
In order to achieve goal of Smart City Services, it is essential to cowork with widespread infrastructural devices in the city.
Moreover, security field has been moving forward from follow-up service using video information to convergence with information of infrastructural devices.  

Network Camera is a device to process video data which is one of the biggest data. 
Hence, it requires higher computation and network capacity compared to other basic sensor devices.  

##### Prove of Concept 
I had focused on this feature and tried to implement a few Prove of Concept to verify possibility of service  to provide value to customers.

###### First PoC
The first PoC was to control smart bulb via camera to test connection process between camera and external devices. 
The main purpose of this PoC was controlling external device via inner event of camera. 
    
<figure>
  <img src="/images/samsung/profile_htw_iot0.gif" width="70%">
</figure>

###### Second PoC
The second was to control camera by numerical value from outer sensor devices.
Order of PoC1 was opposite to that of PoC2. 
But ready made camera was not able to get bluetooth signal. 
To resolve this problem, I implemented and used simple progam on Raspberry pi.

<figure>
  <img src="/images/samsung/profile_htw_iot1.gif" width="70%">
</figure>

##### Meaning of PoC

After a few PoC, I found it possible that Network Camera was able to work as a Edge Gateway.
As mentioned above, camera has sufficient capability to handle high capacity video data without assistance from upper stage devices, 

Also in Smart City, one of the important points is data fusion.
It can realize services, once regarded as impossible, through  combination of data with various sensors that monitor item such as temperature, moisture, motion detection and image. 
If camera is a gateway to manage edge devices, data fusion is feasible without intervention from the high performance serve 

##### IoT Camera

In early 2017, I got a chance to apply this concept to an actual product.
I joined Task Force Team as a main developer for camera, which is a sizeable project to cover city area.
Requirements of the project included various services such as missing child prevention and  fire monitoring service.  

My team, partner, and client had numerous disscusions to realize this concept in real world, and we decided to use bluetooth sensor devices and camera.

![Alt text](/images/samsung/profile_htw_iot2.png)

We made achievemets as follows
1. Obtain sensor data and video data simultaneously
     * Service using sensor data and video data at the same time is feasible  
        (eg: If there is not any target’s motion in a specific spot, camera will turn to the specific spot.) 
2. Provide various services via just changing external devices supporting bluetooth  
    * Social Protection Service: Beacon
    * Fire Monitoring Service: BLE temperature sensor
    * Capable of attaching new services easily by adding new BLE devices
3. Enable network load balancing
    * It divides computing cost concentrating on server to edge gateway
    * Data fusion can be feasible in this device
    * It can filter sensor data
    
---
#### Related News

[1] [Server Partner company's blog article(korean)](http://www.pntbiz.co.kr/index.php/2018/03/16/iot-cctv-blog/)  
[2] [Server Partner company's IoT cctv demo(korean)](https://www.youtube.com/watch?v=3PWR8SXjsU0)  
[3] [Server Partner company's IoT cctv Exhibition(korean)](https://www.youtube.com/watch?v=IxaOIL74fu8)  
[4] [Newsis news(korean)](http://www.newsis.com/view/?id=NISX20180731_0000378567)  
