---
layout: page
group: mail
---
<div class="post">
<p>Dear Professor 000<br>
I am HyungKyu Kim from South Korea and I contact you regarding applying to your doctoral course.<br>
I am confident to break any obstacle that I will face for research with my experience of industrial field over years!</p>

<p>In SAMSUNG, I have worked as Embedded System Engineer over five years.<br>
And In a medical startup, I have an as AI Researcher for two years.<br>
Main projects that I have been in charge of are followings.
</p>
<br>

{% for brf in site.data.brief %}
  <div>
    <ul class='posts'>
        <div class='brief'>
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
    </ul>
</div>
{% endfor %}
<div class="brief_further"> Click on image for further information</div>
<div class="brief_see">
    <a href="https://hyungkyu-kim.github.io/portfolio">☛ Visit full portfolio page</a>
</div>

<p><br>
Reading researches and publications in your group page, I was fascinated with your marvelous achievements.<br>
Especially 연구제목1 and 연구제목2 really impressed me in that… 어떤 점에서... 
and I believe that In your group, with my experiences in industry,it is possible to move forward to unprecedented work.
<br>
그림 추가?
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
