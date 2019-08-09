---
layout: page
group: mail
---
<div class="post">
<p>Dear Professor 000<br>
I am HyungKyu Kim from South Korea and I contact you regarding applying to your doctoral course.<br>
I confident that I have an enthusiasm to break any obstacle encountered in research with my experience of industrial field over years!</p>

<p>In SAMSUNG, I have worked as Embedded System Engineer over five years.<br>
And In medical startup, during two years I have experience as AI Researcher.<br>
My main projects are followings.
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
Reading researches and publications in your group page, I am fascinated with your marvelous achievements.<br>
Especially 연구제목1 and 연구제목2 really impressed me.
In your group, with my experiences in many projects, I believe that it is possible to move forward to unprecedented work.
</p>

<p>
I want to say many things in this mail, but I know you are very busy.<br>
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
