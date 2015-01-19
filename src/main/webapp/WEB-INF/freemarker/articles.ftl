<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Articles">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">
                    <div id="blog" class="blog-1">
                        <div class="container">
                            <div class="row blog-row">
                                <div class="col-md-4 blog-col" data-scrollreveal="enter left over 1.5s">
                                    <a href="<@spring.url '/blog/articles/article-01'/>" class="blog-preview-img">
                                        <div class="caption">
                                            <div class="caption-content">
                                                <i class="fa fa-search fa-3x"></i>
                                            </div>
                                        </div>
                                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-01-sm.jpg" class="img-responsive" alt="">
                                    </a>
                                    <div class="blog-preview-content">
                                        <h3>
                                            <a href="<@spring.url '/blog/articles/article-01'/>">5 reasons to learn a Wedding Dance</a>
                                        </h3>
                                        <p>Wedding dance – is not tiring and boring must in your wedding list. It can be absolutely fun and amazing, it can make your preparation days bright, and entirely delight your guests on the Big Day. Let’s see why?</p>
                                        <div class="continue"><a href="<@spring.url '/blog/articles/article-01'/>">Continue Reading &rarr;</a>
                                        </div>
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4 blog-col" data-scrollreveal="enter bottom over 1.5s">
                                    <a href="<@spring.url '/blog/articles/article-02'/>" class="blog-preview-img">
                                        <div class="caption">
                                            <div class="caption-content">
                                                <i class="fa fa-search fa-3x"></i>
                                            </div>
                                        </div>
                                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-02-sm.jpg" class="img-responsive" alt="">
                                    </a>
                                    <div class="blog-preview-content">
                                        <h3>
                                            <a href="<@spring.url '/blog/articles/article-02'/>">How long will it take to learn a WEDDING DANCE?</a>
                                        </h3>
                                        <p>For some reason, most of the couples are divided into two categories: some of them think that to learn a wedding dance - it's super-complex task that takes a lot of time and money, another group believe that to start dancing like in “Dancing with the Stars” should take not more than a week. Both are, of course, wrong.</p>
                                        <div class="continue"><a href="<@spring.url '/blog/articles/article-02'/>">Continue Reading &rarr;</a>
                                        </div>
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4 blog-col" data-scrollreveal="enter right over 1.5s">
                                    <a href="<@spring.url '/blog/articles/article-03'/>" class="blog-preview-img">
                                        <div class="caption">
                                            <div class="caption-content">
                                                <i class="fa fa-search fa-3x"></i>
                                            </div>
                                        </div>
                                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-03-sm.jpg" class="img-responsive" alt="">
                                    </a>
                                    <div class="blog-preview-content">
                                        <h3>
                                            <a href="<@spring.url '/blog/articles/article-03'/>">Rules of a perfect wedding dance</a>
                                        </h3>
                                        <p>Whatever you say, fashion is always dictates the rules. Even those who do not make a huge and expensive wedding, still fancy to have such an important attribute as a wedding dance. And why?</p>
                                        <div class="continue"><a href="<@spring.url '/blog/articles/article-03'/>">Continue Reading &rarr;</a>
                                        </div>
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>


                            <div class="row blog-row">
                                <div class="col-md-4 blog-col" data-scrollreveal="enter left over 1.5s">
                                    <a href="<@spring.url '/blog/articles/article-04'/>" class="blog-preview-img">
                                        <div class="caption">
                                            <div class="caption-content">
                                                <i class="fa fa-search fa-3x"></i>
                                            </div>
                                        </div>
                                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-04-sm.jpg" class="img-responsive" alt="">
                                    </a>
                                    <div class="blog-preview-content">
                                        <h3>
                                            <a href="<@spring.url '/blog/articles/article-04'/>">Bride's fit Bootcamp in Brighton</a>
                                        </h3>
                                        <p>Fancy to be in a nice shape till your Wedding? </p>
                                        <p>The thing is - even with such a big occasion like your wedding day it can be quite difficult to commit, stay strong and really loose extra weight and make your body fit alone without any help and support.</p>
                                        <div class="continue"><a href="<@spring.url '/blog/articles/article-04'/>">Continue Reading &rarr;</a>
                                        </div>
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4 blog-col" data-scrollreveal="enter bottom over 1.5s">
                                    <a href="<@spring.url '/blog/articles/article-05'/>" class="blog-preview-img">
                                        <div class="caption">
                                            <div class="caption-content">
                                                <i class="fa fa-search fa-3x"></i>
                                            </div>
                                        </div>
                                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-05-sm.jpg" class="img-responsive" alt="">
                                    </a>
                                    <div class="blog-preview-content">
                                        <h3>
                                            <a href="<@spring.url '/blog/articles/article-05'/>">Lady's Body Workshop "Strong, Flexible, Sexy, Free"</a>
                                        </h3>
                                        <p>Forget about everyday troubles, forget that you don't know how to dance or haven't exercised for ages. Leave all doubts behind and come to Body Workshop "Strong, Flexible, Sexy, Free".</p>
                                        <div class="continue"><a href="<@spring.url '/blog/articles/article-05'/>">Continue Reading &rarr;</a>
                                        </div>
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4 blog-col" data-scrollreveal="enter right over 1.5s">
                                    <a href="<@spring.url '/blog/articles/article-06'/>" class="blog-preview-img">
                                        <div class="caption">
                                            <div class="caption-content">
                                                <i class="fa fa-search fa-3x"></i>
                                            </div>
                                        </div>
                                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-06-sm.jpg" class="img-responsive" alt="">
                                    </a>
                                    <div class="blog-preview-content">
                                        <h3>
                                            <a href="<@spring.url '/blog/articles/article-06'/>">Private Dancing Masterclass for your family or friends</a>
                                        </h3>
                                        <p>Holidays, Birthdays, Christmas - even the Bank holiday - is a perfect reason to throw a little party! And what a party without dancing?</p>
                                        <div class="continue"><a href="<@spring.url '/blog/articles/article-06'/>">Continue Reading &rarr;</a>
                                        </div>
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>


                            <div class="row blog-row">
                                <div class="col-md-4 blog-col" data-scrollreveal="enter left over 1.5s">
                                    <a href="<@spring.url '/blog/articles/article-07'/>" class="blog-preview-img">
                                        <div class="caption">
                                            <div class="caption-content">
                                                <i class="fa fa-search fa-3x"></i>
                                            </div>
                                        </div>
                                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-07-sm.jpg" class="img-responsive" alt="">
                                    </a>
                                    <div class="blog-preview-content">
                                        <h3>
                                            <a href="<@spring.url '/blog/articles/article-07'/>">Body Workshop for Actors BODY MATTERS</a>
                                        </h3>
                                        <p>Acting - is complicated and variegated process, and body language is a big part of it. When your body is free - you can become anyone, you can be as truthful as possible, and you can find inspiration from your body as well.</p>
                                        <div class="continue"><a href="<@spring.url '/blog/articles/article-07'/>">Continue Reading &rarr;</a>
                                        </div>
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-4 blog-col" data-scrollreveal="enter left over 1.5s">
                                    <a href="<@spring.url '/blog/articles/article-08'/>" class="blog-preview-img">
                                        <div class="caption">
                                            <div class="caption-content">
                                                <i class="fa fa-search fa-3x"></i>
                                            </div>
                                        </div>
                                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-08-sm.jpg" class="img-responsive" alt="">
                                    </a>
                                    <div class="blog-preview-content">
                                        <h3>
                                            <a href="<@spring.url '/blog/articles/article-08'/>">When a girl dances with a girl...</a>
                                        </h3>
                                        <p>When I lived in Ukraine where LGBT movement was still not strong and rights are not declared I somehow managed to teach girl-couples to dance ballroom dance.</p>
                                        <div class="continue"><a href="<@spring.url '/blog/articles/article-08'/>">Continue Reading &rarr;</a>
                                        </div>
                                        <ul class="meta list-inline">
                                            <li>17 January 2015</li>
                                        </ul>
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