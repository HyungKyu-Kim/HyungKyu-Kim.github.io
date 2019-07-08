---
title:  Video Surveillance as a Service
layout: post
group: Portfolio
organization: Samsung Techwin
thumbnail: /images/samsung/profile_htw_cloud.gif
permalink: /portfolio/samsung/video_surveillance_as_a_service
---
This service integrates the cloud system and network camera. 
It can provide necessary information from a network camera in the local network to the outside network user, all while maintaining security.

<!--break-->

#### My Role
Network camera main developer 
  * Implement module establishing tunneling between server and camera
  * Implement controller module between server and camera
  * Implement module streaming between server and camera

---
#### Project Detail

![](/images/samsung/profile_htw_cloud.gif)

As we can see from the name, CCTV(Closed Circuit Television) is a device working on closed local network. 
In network camera age, this concept was maintained as past. 
But this tendency had met technology called Cloud Service and started to move forward from closed world to open world.
"Video Surveillance as a Service" was created from this background.
VSaaS has following advantages compared with traditional surveillance systems.
* Provide efficiency and total cost of ownership
* Provide flexibility and scalability
* Access to value-added services
* Provide a wide array of products for hosted video

##### Stratocast
I took a step into Video surveillance field as device side developer in 2015, when VSaaS was started to provide commercial service.
First project that I participated in was ["Stratocast project"](https://www.genetec.com/solutions/all-products/stratocast/overview).
It is a cloud-based video monitoring of [Genetek](https://www.genetec.com/).
<figure>
  <img src="/images/samsung/profile_htw_cloud1.png">
  <figcaption>Stratocast implemented in Samsung camera</figcaption>
</figure>

##### VSaaS Camera
After Stratocast project, I was involved in various client system in Network Camera device.
As each Cloud System had a distinct method to communicate between camera and server, I tried to find **flexible hierarchy** to cope with these different features. 
This point was about **dealing with heterogeneous protocols** with out huge transform.
Main issues were below
* Different connection protocol like VPN, SSH and custom protocol(socket)
* Different system structure like existence of delegate connection server and region connection method

I also had to handle **variation of the connection network types** like.
* Ethernet
* LTE
* wifi 

And **exception handle** was a significant topic. It had issues like following.
* Compose device rebooting scenario(eg. reconnect)
* Set connection retry count via limitation of server's resources
* Control amount of sending data by network bandwith 

Structure of VSaaS camera was below figure. My development part is in red rectangle.
<figure>
  <img src="/images/samsung/profile_htw_cloud.png">
</figure>

This client provided service through connection with server like following order. 
1. Register Camera: Official operator performs secure process like RSA key exchange and registers camera in server 
2. Sending Data: Registered camera sends video and additional data to streaming server through established tunnel
3. Streaming Service: Authenticated user requests the video streaming matched with user

---
#### Related News
  * [Hanwha Techwin America Cameras Earn Genetec Stratocast VSaaS Cloud Integration and Certification ](https://securitytoday.com/articles/2016/10/26/hanwha-techwin-america-cameras-earn-genetec-stratocast-vsaas-cloud-integration-and-certification.aspx)
  * [Cameras Earn Cloud Integration & Certification ](https://www.sdmmag.com/articles/93266-cameras-earn-cloud-integration-certification)