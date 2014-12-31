<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Article">
<#include "common/navigation.ftl"/>
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <div id="blog" class="single-article">
                        <div class="container">
                            <div class="row blog-row">
                                <div class="col-md-8 blog-col" data-scrollreveal="enter left over 1.5s">
                                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-1.jpg" class="img-responsive" alt="">
                                    <div class="blog-preview-content">
                                        <h3>
                                            Lady's Body Workshop "Strong, Flexible, Sexy, Free"
                                        </h3>
                                        <br />
                                        <p>
                                            Forget about everyday troubles, forget that you don't know how to dance or haven't exercised for ages. Leave all doubts behind and come to Body Workshop "Strong, Flexible, Sexy, Free".
                                            Ones a week, every Sunday - this is the time for your body to become important, valuable and free.</p>
                                        <br />
                                        <p>What we do here?</p>
                                        <br />
                                        <ul>
                                            <li>We give our muscles a good workout, we explore their capability and believe me this is hot!</li>
                                            <li>We release our bodies from stress and get an amazing feeling of harmony.</li>
                                            <li>We learn different types of movements, learn to feel the music and show feelings through the dance.</li>
                                            <li>We smile a lot and leave all fears behind!</li>
                                        </ul>
                                        <br />
                                        <p>So if you've ever been interested in such types of activities as fitness, yoga, dancing or acting - this is a perfect Workshop for you that will finally make you feel Strong, Flexible, Sexy, Free.</p>
                                        <br />
                                        <p>EVERY SUNDAY 12 a.m.</p>
                                        <p>Address:</p>
                                        <br />
                                        <p>Drop-in £5, every 5th - 2.50.</p>
                                        <br />
                                        <p>See you in dancing class!</p>
                                        <br />
                                        <ul class="meta list-inline">
                                            <li>February 31, 2014</li>
                                            <li>9 Comments</li>
                                            <li><i class="fa fa-heart text-primary"></i> 12</li>
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


