<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "How long will it take to learn a WEDDING DANCE?">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <div id="blog" class="single-article">
                        <div class="container">
                            <div class="row blog-row">
                                <div class="col-md-8 blog-col" data-scrollreveal="enter left over 1.5s">
                                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-02.jpg" class="img-responsive" alt="">
                                    <div class="blog-preview-content">
                                        <h2 style="text-align: center">
                                            How long will it take to learn a WEDDING DANCE?
                                        </h2>
                                        <br />
                                        <p class="article-text">For some reason, most of the couples are divided into two categories: some of them think that to learn a wedding dance - it's super-complex task that takes a lot of time and money, another group believe that to start dancing like in “Dancing with the Stars” should take not more than a week. Both are, of course, wrong.</p>
                                        <br />
                                        <p class="article-text">To answer the question we should firstly understand what dancing experience you have and what complexity of dance you want.</p>
                                        <br />
                                        <p class="article-text">Some people enjoy dancing so much that start their journey to the art of moving on the dance floor even half a year in advance. But most of the time – <span class="text-dark">5-6 lessons is ideal to make a nice, romantic and artistic wedding dance.</span> But be sure – these <span class="text-dark">5 lessons are not 5 days before your wedding!</span> You don’t want to get nervous and answering phone calls about floristic and restaurant while you’re dancing, don’t you? So make sure you start about 5-8 weeks before THE BIG DAY!</p>
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


