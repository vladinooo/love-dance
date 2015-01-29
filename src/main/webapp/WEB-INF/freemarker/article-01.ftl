<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "5 reasons to learn a Wedding Dance">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <div id="blog" class="single-article">
                        <div class="container">
                            <div class="row blog-row">
                                <div class="col-md-8 blog-col">
                                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-01.jpg" class="img-responsive" alt="">
                                    <div class="blog-preview-content">
                                        <h2 style="text-align: center">
                                            5 reasons to learn a Wedding Dance
                                        </h2>
                                        <br />
                                        <p class="article-text">Wedding dance – is not tiring and boring must in your wedding list. It can be absolutely fun and amazing, it can make your preparation days bright, and entirely delight your guests on the Big Day. Let’s see why?</p>
                                        <br />
                                        <ol class="article-o-list">
                                            <li><span>Wedding Dance – is a nice opportunity to join the world of dancing. Many people always wanted to dance, but found it difficult to reach the dance club – luck of time and fear to fail usually leave our dreams about dancing unrealized. Make your body do unusual movement, learn something new and just forget about stage fright - all this can be done in the learning process.</span></li>
                                            <li><span>Wedding Dance - this is your first joint creation. In the process of its creation, you will learn to listen to each other, be patient and tolerant, if something does not work straight away, and get to know each other even better!</span></li>
                                            <li><span>Wedding Dance – is you exclusive love story, because we will create it together with your favourite music and any of your crazy ideas. This is a good way to show imagination or just an excuse to wear another dress or make a show on the wedding without paying extra money to artists! All of this anyway will be unique and will remain in your memory for all your life.</span></li>
                                            <li><span>Dance - is the ability to trust your partner. Nothing compares to the feeling when a man leads, and the woman responds - it's just spectacular!</span></li>
                                            <li><span>It’s not difficult – it is a pure fun! In 5 lessons you will feel like you’ve been dancing all your life, because I know the secret way of getting a dancer out of you!</span></li>
                                        </ol>
                                        <br />
                                        <h4 class="article-quote">LOVE DANCE – is the best Wedding Dance in Brighton and Hove, don’t trust, just TRY!</h4>
                                        <br />
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <h2><a href="<@spring.url '/blog/articles'/>" class="dark-link font-decorated">< All Articles</a></h2>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</section>
</@layout.default>


