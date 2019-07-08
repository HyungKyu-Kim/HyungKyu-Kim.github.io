---
title:  IoT Camera
layout: post
group: Portfolio
organization: Samsung Techwin
thumbnail: /images/samsung/profile_htw_iot2.png
permalink: /portfolio/samsung/iot_camera
---
This new type of product is a network camera working as an IoT gateway. 
It gathers sensor data and provides various services, such as social protection, fire monitoring and missing child prevention, by cooperating with adjacent IoT devices.

<!--break-->

#### My Role
Network camera main developer on Task Force Team
* Implement Bluetooth communication module between network camera and devices
* Implement communication module with IoT server (RESTful)
* Implement serial communication module (rs-485) 

----

#### Project Detail

Smart city is a fast-growing tech domain nowadays, and it is hard to imagine the smart city without IoT.
In order to achieve goal of Smart City Services, it is essential for widespread infrastructural devices in the city to cooperate.
Moreover, the security field has been moving forward from follow-up services using video information to convergence with information of infrastructural devices.  

Network Camera is a device to process video data. 
As one of the largest form of data, video data requires higher computation and network capacity compared to other basic sensor devices.  

##### Proof of Concept 
I have focused on this feature and tried to implement several Proof of Concept to verify the possibility of valuable service to customers.

###### First PoC
The first PoC was to control a smart bulb via a camera to test the connection process between a camera and external devices. 
The main purpose of this PoC was to control on external device via an inner event of a camera. 
    
<figure>
  <img src="/images/samsung/profile_htw_iot0.gif" width="70%">
</figure>

###### Second PoC
The second PoC was to control a camera by numerical sensor values from outer sensor devices.
The opposite orders of PoC1.
Howevers, the ready-made camera was not able to receive the bluetooth signal. 
To resolve this problem, I implemented and used a simple program on Raspberry pi.

<figure>
  <img src="/images/samsung/profile_htw_iot1.gif" width="70%">
</figure>

##### Meaning of PoC

After a few PoC, I found it possible that Network a Camera was able to work as an Edge Gateway.
As mentioned above, a camera has sufficient capability to handle high capacity video data without assistance from upper stage devices. 

Furthermore in Smart City, data fusion is an important points.
Data fusion can realize services, once regarded as impossible, through a combination of data from various sensors that monitor items such as temperature, moisture, motion detection, and image. 
If a camera is a gateway to manage edge devices, data fusion is feasible without intervention from a high performance server. 

##### IoT Camera

In early 2017, I got a chance to apply this concept to an actual product.
I joined Task Force Team as a main developer for the camera, which was a sizeable project to cover a city area.
Requirements of the project included various services such as missing child prevention and  fire monitoring services.  

My team, partner, and client had numerous discussions to bring this concept to the real world, and we decided to use bluetooth sensor devices and cameras.

![Alt text](/images/samsung/profile_htw_iot2.png)

We achieved the following:
1. Obtained sensor data and video data simultaneously
     * Services using sensor data and video data at the same time was feasible  
        (eg: If there is not any target’s motion in a specific spot, camera will turn to the specific spot.) 
2. Provided various services via simply changing external devices supporting bluetooth  
    * Social Protection Service: Beacon
    * Fire Monitoring Service: BLE temperature sensor
    * Capable of attaching new services easily by adding new BLE devices
3. Enabled network load balancing
    * It divided computing cost concentrating on server to edge gateway
    * Data fusion can be feasible in this device
    * It can filter sensor data
    
---
#### Related News

[1] [Server Partner company's blog article(korean)](http://www.pntbiz.co.kr/index.php/2018/03/16/iot-cctv-blog/)  
[2] [Server Partner company's IoT cctv demo(korean)](https://www.youtube.com/watch?v=3PWR8SXjsU0)  
[3] [Server Partner company's IoT cctv Exhibition(korean)](https://www.youtube.com/watch?v=IxaOIL74fu8)  
[4] [Newsis news(korean)](http://www.newsis.com/view/?id=NISX20180731_0000378567)  
