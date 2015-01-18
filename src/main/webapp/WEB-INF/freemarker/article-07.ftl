<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Body Workshop for Actors BODY MATTERS">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <div id="blog" class="single-article">
                        <div class="container">
                            <div class="row blog-row">
                                <div class="col-md-8 blog-col" data-scrollreveal="enter left over 1.5s">
                                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-07.jpg" class="img-responsive" alt="">
                                    <div class="blog-preview-content">
                                        <h2 style="text-align: center">
                                            Body Workshop for Actors BODY MATTERS
                                        </h2>
                                        <br />
                                        <p class="article-text">Acting - is complicated and variegated process, and body language is a big part of it. When your body is free - you can become anyone, you can be as truthful as possible, and you can find inspiration from your body as well.</p>
                                        <br />
                                        <p class="article-text">Being a dancing teacher and actor in Ukraine, I made the Workshop that helps professional actors and people who only start their journey to the beautiful and exiting acting world, to improve their skills and be able to improvise.</p>
                                        <br />
                                        <h4 class="text-dark">We will dedicate our time to range of techniques to:</h4>
                                        <ul class="article-u-list">
                                            <li><span>be convincing and natural on the stage</span></li>
                                            <li><span>use our body to help us in acting</span></li>
                                            <li><span>be interesting without a need to talk all the time</span></li>
                                        </ul>
                                        <br />
                                        <h4 class="text-dark">Please take some changing clothes and be ready for fun and impro!</h4>
                                        <br />
                                        <p class="article-text">EVERY SUNDAY at 2pm</p>
                                        <p class="article-text">Address: 9 Gloucester Rd, One Church Brighton</p>
                                        <p class="article-text">Drop-in £6, every 5th lesson £3</p>
                                        <br />
                                        <h3 class="centered">Don’t hesitate to ask any questions and book your place in the class!</h3>
                                        <br />
                                        <h2 class="text-dark centered">Phone: 07476495494</h2>
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


