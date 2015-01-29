<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Lady's Body Workshop \"Strong, Flexible, Sexy, Free\"">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <div id="blog" class="single-article">
                        <div class="container">
                            <div class="row blog-row">
                                <div class="col-md-8 blog-col">
                                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-05.jpg" class="img-responsive" alt="">
                                    <div class="blog-preview-content">
                                        <h2 style="text-align: center">
                                            Lady's Body Workshop<br />"Strong, Flexible, Sexy, Free"
                                        </h2>
                                        <br />
                                        <p class="article-text">Forget about everyday troubles, forget that you don't know how to dance or haven't exercised for ages. Leave all doubts behind and come to Body Workshop "Strong, Flexible, Sexy, Free". Ones a week, every Sunday - this is the time for your body to become important, valuable and free.</p>
                                        <br />
                                        <h4 class="text-dark">What we do here?</h4>
                                        <ul class="article-u-list">
                                            <li><span>We give our muscles a good workout, we explore their capability and believe me this is hot!</span></li>
                                            <li><span>We release our bodies from stress and get an amazing feeling of harmony.</span></li>
                                            <li><span>We learn different types of movements, learn to feel the music and show feelings through the dance.</span></li>
                                            <li><span>We smile a lot and leave all fears behind!</span></li>
                                        </ul>
                                        <br />
                                        <p class="article-text">So if you've ever been interested in such types of activities as fitness, yoga, dancing or acting - this is a perfect Workshop for you that will finally make you feel Strong, Flexible, Sexy, Free.</p>
                                        <br />
                                        <p class="article-text">EVERY SUNDAY at 1pm</p>
                                        <p class="article-text">Address: 9 Gloucester Rd, One Church Brighton</p>
                                        <p class="article-text">Drop-in £5, every 5th lesson £2.50</p>
                                        <br />
                                        <h3 class="centered">Don’t hesitate to ask any questions and book your place in the class!</h3>
                                        <br />
                                        <h2 class="text-dark centered">Phone: 07476495494</h2>
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


