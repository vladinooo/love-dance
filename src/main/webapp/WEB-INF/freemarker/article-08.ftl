<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "When a girl dance with a girl...">
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
                                            When a girl dance with a girl...
                                        </h2>
                                        <br />
                                        <p class="article-text">When I lived in Ukraine where LGBT movement was still not strong and rights are not declared I somehow managed to teach girls-couples to dance ballroom dances.</p>
                                        <br />
                                        <p class="article-text">That was a new experience for me which then I absolutely loved for the incredible beauty of it.</p>
                                        <br />
                                        <p class="article-text">Here in colourful Brighton I'm sure gay dancing is already quite popular, but I dare to be a part of it anyway.</p>
                                        <br />
                                        <p class="article-text">What is special about teaching gay couples? The dance itself become like a dialogue, where boundaries are blurred, where you won't see the typical man-leads stereotype.</p>
                                        <br />
                                        <p class="article-text">Two partners can switch the leading role, they can be playful and show much-much more!</p>
                                        <br />
                                        <h4 class="text-dark">Wedding Dance? Why not?</h4>
                                        <p class="article-text">So if you and your partner ever had in mind to dance together - maybe now is the time to start...</p>
                                        <br />
                                        <p class="article-text">Do it just for yourself or learn a proper Wedding dance for your special day. I bet you will love it!</p>
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


