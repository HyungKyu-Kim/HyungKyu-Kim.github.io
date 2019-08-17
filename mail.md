---
layout: page
group: mail
---
<div style="color: #555555; font-family: Open Sans; font-size: 16px; line-height: 30px; max-width: 850px;">
<p>Dear Professor 000<br>
I am HyungKyu Kim from South Korea and I contact you regarding applying to your doctoral course.<br>
Until now, I have pondered "how" I can develop, but I think that it's time to focus on "what" I develop.<br>
I am confident to break any obstacle that I will face for research with my experience of industrial field over years!<br>
My main skill-set is like bellow.
</p>

<br>
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
<p> I wanted to train myself through product process in industrial field.<br>
As a result, it was possible to get skill to develop any results what I want.<br>
In SAMSUNG, I have worked as Embedded System Engineer over five years.<br>
And In a medical startup, I have an as AI Researcher for two years.<br>
Main projects that I have been in charge of are followings.
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
I have huge interest that the way can bring out information collected and processed in cyber world to the real world.
Reading researches and publications in your group, I was fascinated with your marvelous achievements.
Shape-shifting device was really impressed me in that it can propose display of intuitional alive information.   
And the concept of ubiquitous robotics was fantastic also. 
I think It has tremendous potential to conquer complex environment.  
I believe that In your group, with my experiences in industry,it is possible to move forward to unprecedented work.
<br>
</p>

<p style="text-align: center;">
    <img src="/images/mail/mail_plan.PNG" width="500" alt="" align="center">
</p>

<p>
I want to say more in this email, but I know you are very busy.<br>
If I can get a chance, it would be great honor for me to communicate with you regarding getting your exciting experiments and advice.
<br><br>
I know that there are huge possibility that this mail will not be read, since tremendous number of people send mail to you.
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