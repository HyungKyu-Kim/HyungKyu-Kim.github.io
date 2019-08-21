---
layout: page
group: mail
---
<div style="color: #555555; font-family: Open Sans; font-size: 16px; line-height: 30px; max-width: 850px;">
<p>Dear Professor 000<br>
My name is Hyungkyu Kim from South Korea and I am emailing you since I am interested in your doctoral course.<br>
Until now, I have pondered "how" I can develop, but I think that it's time to focus on "what" I develop.<br>
I believe that I am able to break any obstacles that I will face for research with my experience of industrial field over years!<br>
</p>

<p>I would like to briefly introduce my background. My main skill-set is as below</p>
<div class="brief">
  <div class="partial_img">
    <div style="text-align:center">Implementing hybrid system by case</div>
    <img src="/images/mail/skill1.gif" alt="">
  </div>
  <div class="partial_img">
    <div style="text-align:center">Handling various communication & data type</div>
    <img src="/images/mail/skill2.png" alt="">
  </div>
</div>
<br>

<div class="brief">
  <div class="partial_img">
    <div style="text-align:center">Handling various frameworks & methods</div>
    <img src="/images/mail/skill3.png" alt="">
  </div>
  <div class="partial_img">
    <div style="text-align:center">Handling various H/W & sensors</div>
    <img src="/images/mail/skill4.png" alt="">
  </div>
</div>

<br>
<p> For many years, I had wanted to train myself through product process in industrial field.<br>
As a result, I was able to get skills to develop any results that I want.<br>
In SAMSUNG, I had worked as Embedded System Engineer over 5 years until I joined Medipixel, a medical startup.
And In Medipixel, I have done AI Researcher job for 2 years.<br>
Main projects that I have been in charge of are as follows
</p>
<br>

{% for brf in site.data.brief %}
<div style="overflow: auto;    align-items: center;
    font-weight: bold;
    font-size: 14px;">
  <div class="brief_l">
    <div style="text-align:center">{{ brf.pjt1 }}</div>
    <a href="{{ brf.url1 | relative_url }}"> <img src="{{ brf.img1 }}" alt=""> </a>
  </div>
  <div class="brief_m">
    <div style="text-align:center">{{ brf.pjt2 }}</div>
    <a href="{{ brf.url2 | relative_url }}"><img src="{{ brf.img2 }}" alt=""></a>
  </div>
  <div class="brief_r">
    <div style="text-align:center">{{ brf.pjt3 }}</div>
    <a href="{{ brf.url3 | relative_url }}"><img src="{{ brf.img3 }}" alt=""></a>
  </div>
</div>
{% endfor %}
<div style="color: #888; font-family: Noto Sans CJK KR; font-size: 14px; line-height: 15px; font-weight: 300; text-align:center; margin-top: 10px; margin-bottom: 30px;"> Click on image for further information</div>
<div style="margin-top: 50px; margin-bottom: 30px;">
    <a href="https://hyungkyu-kim.github.io/portfolio">☛ Visit full portfolio page</a>
</div>

<p><br>
I have huge interest in finding a way to bring out information collected and processed in cyber world to the real world.
Reading researches and publications in your group, I got fascinated with your marvelous achievements.<br><br>
I have thought that for interaction of true meaning with cyber space, it is necessary for device to possess physically deformable appearance.
"Shape-shifting device" showed the way to me. 
I totally agree that this physical adaptation is the best method for intuitional alive information.<br><br>
The concept of "Ubiquitous Robotics" was fantastic as well. 
Since it is possible to bring out compositive procedure beyond simple information to the physical world, I believe it has tremendous potential to conquer complex problem in future.
With tough environment such as space exploration, even though there are problems such as high latency, high variant and an accident, I think that the mission can be continued by this kind of system.
<br><br>
I believe that in your group, with my experience in industry, I could contribute to progress unprecedented works.
<br>
</p>

<p style="text-align: center;">
    <img src="/images/mail/mail_plan.PNG" width="500" alt="" align="center">
</p>

<p>
I would like to say more in this email, but I know you are very busy.<br>
If I can get a chance, it would be great honor for me to communicate with you regarding getting your exciting experiments and advice.
<br><br>
I know that there is a huge possibility that this mail will not be read, since tremendous number of people are sending mail to you. 
But I will never give up to get this chance.
I am really dreaming of joining your research group.
I am looking forward to your reply.
</p>

<p>
Sincerely yours,<br>
HyungKyu Kim
</p>

<p>
----- 여기는 커스터마이징용 임시 내용<br>
Reading researches and publications in your group page, I was fascinated with your marvelous achievements.<br>
Especially 연구제목1 and 연구제목2 really impressed me in that… 어떤 점에서... 
and I believe that In your group, with my experiences in industry,it is possible to move forward to unprecedented work.
</p>