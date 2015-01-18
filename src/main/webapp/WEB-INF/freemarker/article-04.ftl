<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Bride's fit Bootcamp in Brighton">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <div id="blog" class="single-article">
                        <div class="container">
                            <div class="row blog-row">
                                <div class="col-md-8 blog-col" data-scrollreveal="enter left over 1.5s">
                                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-04.jpg" class="img-responsive" alt="">
                                    <div class="blog-preview-content tight-fit">
                                        <h2 style="text-align: center">
                                            Bride's fit Bootcamp in Brighton
                                        </h2>
                                        <br />
                                        <h4 class="text-dark">Fancy to be in a nice shape till your Wedding?</h4>
                                        <p class="article-text">The thing is - even with such a big occasion like your wedding day it can be quite difficult to commit, stay strong and really loose extra weight and make your body fit alone without any help and support. How many times have you promised yourself to start training from tomorrow? And still there? Together we will achieve much more!<br /><br />Being a bride myself recently I combined my experience as a fitness and dancing coach with understanding of brides feelings.<br /><br />I will help you to perfectly prepare for your wedding. All you need to do - decide and come!</p>
                                        <br />
                                        <h4 class="text-dark">What is Bride's fit Bootcamp?</h4>
                                        <p class="article-text">This is a program, where you will be working hard on your body with other brides. We will change our food habits and will wear the size we want on the Wedding day. WE ARE NOT going to do any yo-yo dieting or taking weight-lose pills.We will make our body loose weight naturally and become much lighter, healthier and energetic! The earlier you start - the better!</p>
                                        <br />
                                        <h4 class="text-dark">What do you get?</h4>
                                        <ul class="article-u-list">
                                            <li><span>1 hour of training 5 days a week (3 times in fitness class, 2 times on the Brighton beach)</span></li>
                                            <li><span>Video trainings and food advice</span></li>
                                            <li><span>Exiting community of other brides where we will share ideas, pictures, give and receive everyday support!</span></li>
                                        </ul>
                                    </div>
                                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-04a.jpg" class="img-responsive" alt="">
                                    <div class="blog-preview-content">
                                        <br />
                                        <div class="centered">
                                            <h3 class="text-dark">Pricing</h3>
                                            <h4 class="article-text">1 month before wedding - £69</h4>
                                            <h4 class="article-text">2 month before wedding - £129</h4>
                                            <h4 class="article-text">3 month before wedding - £179</h4>
                                        </div>
                                        <br />
                                        <br />
                                        <h3 class="centered">OUR BOOTS CAMP STARTS ON the 1st OF MARCH!<br />BOOK YOUR PLACE!</h3>
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


