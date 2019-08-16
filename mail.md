---
layout: page
group: mail
---
<div style="color: #555555; font-family: Open Sans; font-size: 16px; line-height: 30px; max-width: 850px;">
<p>Dear Professor 000<br>
I am HyungKyu Kim from South Korea and I contact you regarding applying to your doctoral course.<br>
I am confident to break any obstacle that I will face for research with my experience of industrial field over years!</p>

<div class="brief">
  <div class="partial_img">
    <div>1. Implementing hybrid system by case</div>
    <img src="/images/mail/skill1.gif" alt="">
  </div>
  <div class="partial_img">
    <div>2. Handling various communication & data type</div>
    <img src="/images/mail/skill2.PNG" alt="">
  </div>
</div>

<div class="brief">
  <div class="partial_img">
    <div>3. Handling various frameworks & methods</div>
    <img src="/images/mail/skill3.PNG" alt="">
  </div>
  <div class="partial_img">
    <div>4. Handling various H/W & sensors</div>
    <img src="/images/mail/skill4.PNG" alt="">
  </div>
</div>

제품화과정을 통해 실전에서 훈련하고 싶었다
과정을 거쳐 원하는 것이 어떤 것이던 실제로 구현해 내놓을 수 있는 능력은 갖추었다고 생각한다.
지금까지 어떻게 만들지에대한 고민이었다면 무엇을 만들지에대해 고민할때가 왔다고 생각한다
<p>In SAMSUNG, I have worked as Embedded System Engineer over five years.<br>
And In a medical startup, I have an as AI Researcher for two years.<br>
Main projects that I have been in charge of are followings.
</p>
<br>

{% for brf in site.data.brief %}
<div style="overflow: auto;    align-items: center;
    font-weight: bold;
    font-size: 14px;">
  <div class="brief_l">
    <div>{{ brf.pjt1 }}</div>
    <a href="{{ brf.url1 | relative_url }}"> <img src="{{ brf.img1 }}" alt=""> </a>
  </div>
  <div class="brief_m">
    <div>{{ brf.pjt2 }}</div>
    <a href="{{ brf.url2 | relative_url }}"><img src="{{ brf.img2 }}" alt=""></a>
  </div>
  <div class="brief_r">
    <div>{{ brf.pjt3 }}</div>
    <a href="{{ brf.url3 | relative_url }}"><img src="{{ brf.img3 }}" alt=""></a>
  </div>
</div>
{% endfor %}
<div style="color: #888; font-family: Noto Sans CJK KR; font-size: 14px; line-height: 15px; font-weight: 300; text-align:center; margin-top: 10px; margin-bottom: 30px;"> Click on image for further information</div>
<div style="margin-top: 50px; margin-bottom: 30px;">
    <a href="https://hyungkyu-kim.github.io/portfolio">☛ Visit full portfolio page</a>
</div>

<p><br>
Reading researches and publications in your group page, I was fascinated with your marvelous achievements.<br>
Especially 연구제목1 and 연구제목2 really impressed me in that… 어떤 점에서... 
and I believe that In your group, with my experiences in industry,it is possible to move forward to unprecedented work.
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
