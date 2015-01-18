<#import "/spring.ftl" as spring />
<#import "common/default.ftl" as layout>
<@layout.default "Welcome to Love Dance">
<header class="intro-img intro-dark-bg" style="background-image: url(${rc.contextPath}/static/spectrum/assets/img/demo-bgs/demo-bg-4.jpg)" data-stellar-background-ratio="0.5" data-stellar-vertical-offset="50">
    <div class="overlay"></div>
    <div class="intro-body" data-scrollreveal="move 0 over 1.5s">
        <div class="container">
            <h1 class="brand-heading font-decorated">
                <span class="text-primary">WEDDING DANCE</span><br>WITH LOVE FOR THOSE WHO ARE IN LOVE
            </h1>
            <hr class="light">
            <h2 class="text-dark-shadow">Tell your love story with the dance</h2>
            <div class="page-scroll" data-scrollreveal="enter bottom after .6s">
                <a href="#about" class="btn btn-scroll-light sink">
                    <i class="fa fa-angle-double-down"></i>
                </a>
            </div>
        </div>
    </div>
</header>

<section id="about" class="text-center">
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-md-offset-2">
                <h2 class="font-decorated">About LOVE DANCE - in Brighton</h2>
                <hr class="primary">
                <div class="kissing-couple">
                    <img src="${rc.contextPath}/static/spectrum/assets/img/kissing-couple.jpg" alt="kissing couple">
                </div>
            </div>
            <div class="col-md-12 lovedance-info">
                <h2 class="font-decorated">Have you ever wanted to:</h2>
                <h3>Move easily and softly?<br />
                    Fly on the dancing floor?<br />
                    Enjoy every step?</h3>

                <h2 class="font-decorated">Then you are in a right place.</h2>
                <h3>Learn your first Wedding dance in Brighton and Hove.<br />
                    Prepare for your Big Day quickly but perfectly!</h3>
            </div>
        </div>
    </div>
</section>

<section class="about-2 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-1">
                <img src="${rc.contextPath}/static/spectrum/assets/img/demo-portraits/portrait-8.jpg" class="img-circle img-responsive img-centered dark-faded-border" alt="">
            </div>
            <div class="col-lg-5 text-center">
                <h2 class="text-dark font-decorated">About ME</h2>
                <hr class="primary">
                <p class="article-text">I'm a choreographer with 10 year of experience, fitness coach and actress. I found myself passionate
                    about
                    making WEDDING DANCE because seeing two people in love and help them to make their
                    special day really exiting and unforgettable is amazing. I brought all my knowledge from Ukraine,
                    where I was born, to Brighton
                    - the most creative and adorable city I have ever seen. So now is the time for making happy people
                    here. I've been a bride recently myself and know what it takes to make an ideal wedding and dance -
                    so I do understand how you feel!</p>
                <ul class="list-inline">
                    <li>
                        <a href="#" class="btn btn-social-dark btn-facebook">
                            <i class="fa fa-fw fa-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="btn btn-social-dark btn-linkedin">
                            <i class="fa fa-fw fa-linkedin"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="btn btn-social-dark btn-twitter">
                            <i class="fa fa-fw fa-twitter"></i>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="btn btn-social-dark btn-dribbble">
                            <i class="fa fa-fw fa-dribbble"></i>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>

<aside class="bg-parallax-dark nopadding" style="background-image: url(/static/spectrum/assets/img/demo-bgs/faces-demo.jpg);" data-stellar-background-ratio="0.5">
    <div class="aside-overlay">
        <div class="container">
            <div class="row text-center">
                <div class="col-lg-8 col-lg-offset-2">
                    <h2 class="font-decorated">Every couple is unique</h2>
                    <hr class="light">
                    <p style="font-size:24px">Every couple is unique, and therefore each needs a unique dance. I never know for
                        sure what dance should it be before I meet and talk to the couple - this is where the beautiful
                        wedding dance starts.</p>
                </div>
            </div>
        </div>
    </div>
</aside>

<section id="benefits" class="services-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center" style="padding-bottom: 40px">
                <h2 class="text-dark font-decorated">Benefits</h2>
                <hr class="primary">
                <h3 class="text-primary" style="line-height: inherit">If you still haven't decided yet whether you need to learn a wedding dance or not here are some advantages that you will have for sure if you join my lessons!</h3>
            </div>
            <div class="col-lg-12 text-center" data-scrollreveal="enter bottom over 1.5s">
                <ul id="services-1-carousel" class="icon-effect list-inline">
                    <!-- ICON USAGE: The icons in this example are generated using Font Awesome unicodes. To use different icons you will need to create a custom CSS class like the ones used below (ex. icon-code, or icon-envelope-o). -->
                    <li class="item">
                        <span class="icon icon-heart"></span>
                        <h2 class="text-dark font-decorated">Love Improving</h2>
                        <p class="article-text">Wedding dance can be a first big cooperative challenge of the couple. See how well you know each other!</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-smile"></span>
                        <h2 class="text-dark font-decorated">Fun</h2>
                        <p class="article-text">Learning something new is always exiting and I promise you will enjoy your time!</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-clock"></span>
                        <h2 class="text-dark font-decorated">It's quick!</h2>
                        <p class="article-text">Only 5 lessons and you will be dancing amazing wedding dance!</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-image"></span>
                        <h2 class="text-dark font-decorated">Memory</h2>
                        <p class="article-text">You will get a video after each lesson to remember the good time or even have a look to refresh it before the big day.</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>


<section id="experience" class="portfolio-1">
    <div class="container">
        <div class="row" data-scrollreveal="move 0 over 1s" data-sr-init="true" data-sr-complete="true">
            <div class="col-lg-12 text-center">
                <h2 class="text-dark font-decorated">Experience</h2>
                <hr class="primary">
                <ul class="list-inline hidden-xs" id="filters">
                    <li>
                        <button data-filter="*" type="button" class="btn btn-primary btn-square btn-raised">All</button>
                    </li>
                    <li>
                        <button data-filter=".photo" type="button" class="btn btn-primary btn-square btn-raised">Photos</button>
                    </li>
                    <li>
                        <button data-filter=".video" type="button" class="btn btn-primary btn-square btn-raised">Videos</button>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row" data-scrollreveal="enter bottom over 1s" data-sr-init="true" data-sr-complete="true">
            <div class="isotope">
                <div class="col-sm-4 portfolio-item photo">
                    <a href="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-1.jpg" class="portfolio-link gallery-item">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-1.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item photo">
                    <a href="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-2.jpg" class="portfolio-link gallery-item">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-2.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item photo">
                    <a href="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-3.jpg" class="portfolio-link gallery-item">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-3.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item photo">
                    <a href="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-4.jpg" class="portfolio-link gallery-item">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-4.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item photo">
                    <a href="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-5.jpg" class="portfolio-link gallery-item">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-search-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-5.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item video">
                    <a href="https://www.youtube.com/watch?v=oorzvPmjmjw" class="portfolio-link popup-youtube">
                        <div class="caption">
                            <div class="caption-content">
                                <i class="fa fa-play-circle-o fa-3x"></i>
                            </div>
                        </div>
                        <img src="${rc.contextPath}/static/spectrum/assets/img/demo-portfolio/couple-6.jpg" class="img-centered" alt="" />
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="blog" class="blog-1 bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2 class="font-decorated">From Our Blog</h2>
                <hr class="primary mb">
            </div>
        </div>
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
        <div class="row">
            <div class="col-lg-12">
                <h2 class="pull-right"><a href="<@spring.url '/blog/articles'/>" class="light-link font-decorated">All Articles ></a></h2>
            </div>
        </div>
    </div>
</section>

<section id="pricing" class="pricing-1">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-8 col-md-offset-2">
                <h2 class="text-dark font-decorated">Pricing</h2>
                <hr class="primary">
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 pricing-col" data-scrollreveal="enter left over 1.5s">
                <div class="pricing-table">
                    <div class="pricing-heading" style="background-image: url('${rc.contextPath}/static/spectrum/assets/img/demo-pricing/1.jpg')">
                        <h2>Single</h2>
                    </div>
                    <div class="content">
                        <div class="price">
                            <span class="amount">£ 35</span>
                            <span class="period">one time</span>
                        </div>
                        <ul class="pricing-items list-unstyled text-center">
                            <li class="item">Pay As You Go</li>
                            <li class="item">1 lesson</li>
                            <li class="item">60 min / lesson</li>
                            <li class="item">Have as many lessons as you need</li>
                            <li class="pricing-button">
                                <a href="<@spring.url '/#contact'/>" class="btn btn-primary btn-square btn-raised">Book</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 pricing-col" data-scrollreveal="enter left over 1.5s">
                <div class="pricing-table">
                    <div class="pricing-heading" style="background-image: url('${rc.contextPath}/static/spectrum/assets/img/demo-pricing/1.jpg')">
                        <h2>5 Lessons</h2>
                    </div>
                    <div class="content">
                        <div class="price">
                            <span class="amount">£ 145</span>
                            <span class="period">one time</span>
                        </div>
                        <ul class="pricing-items list-unstyled text-center">
                            <li class="item">Complete Wedding Dance package</li>
                            <li class="item">5 lessons</li>
                            <li class="item">60 min / lesson</li>
                            <li class="item">Save £30</li>
                            <li class="pricing-button">
                                <a href="<@spring.url '/#contact'/>" class="btn btn-primary btn-square btn-raised">Book</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 pricing-col" data-scrollreveal="enter left over 1.5s">
                <div class="pricing-table">
                    <div class="pricing-heading" style="background-image: url('${rc.contextPath}/static/spectrum/assets/img/demo-pricing/1.jpg')">
                        <h2>6 Lessons Gift</h2>
                    </div>
                    <div class="content">
                        <div class="price">
                            <span class="amount">£ 185</span>
                            <span class="period">one time</span>
                        </div>
                        <ul class="pricing-items list-unstyled text-center">
                            <li class="item">Wedding Dance Gift Voucher</li>
                            <li class="item">6 lessons</li>
                            <li class="item">60 min / lesson</li>
                            <li class="item">Perfect gift for your friends and family</li>
                            <li class="pricing-button">
                                <a href="<@spring.url '/#contact'/>" class="btn btn-primary btn-square btn-raised">Book</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="bookings" class="services-1 bg-yellow">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <h2 class="text-dark font-decorated">Bookings</h2>
                <hr class="primary">
                <p class="text-dark">Coming Soon.</p>
            </div>
        </div>
    </div>
</section>

<section id="shop" class="services-1 bg-dark">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <h2 class="font-decorated">Shop</h2>
                <hr class="primary">
                <p>Coming Soon.</p>
            </div>
        </div>
    </div>
</section>

<section class="bg-primary">
    <div class="container">
        <div class="row text-center">
            <div class="col-lg-8 col-lg-offset-2">
	            <span class="logo">
	                <img src="${rc.contextPath}/static/spectrum/assets/img/logo.png" alt="">
	            </span>
                <h2 class="text-yellow font-decorated">WEDDING DANCE WITH LOVE <br />FOR THOSE WHO ARE IN LOVE</h2>
                <br>
                <h2>Phone: 07476 495494</h2>
            </div>
        </div>
    </div>
</section>

<section id="shop" class="services-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <h2 class="text-dark font-decorated">More Classes</h2>
                <hr class="primary">
                <h3>Build it your way - Love Dance is pure fun!</h3>
                <br />
            </div>
            <div class="centered">
                <div class="more-classes-badge">
                    <a href="<@spring.url '/blog/articles/article-04'/>"><img src="${rc.contextPath}/static/spectrum/assets/img/more-classes-badge-1.png" alt="More classes badge"></a>
                </div>
                <div class="more-classes-badge">
                    <a href="<@spring.url '/blog/articles/article-05'/>"><img src="${rc.contextPath}/static/spectrum/assets/img/more-classes-badge-2.png" alt="More classes badge"></a>
                </div>
                <div class="more-classes-badge">
                    <a href="<@spring.url '/blog/articles/article-06'/>"><img src="${rc.contextPath}/static/spectrum/assets/img/more-classes-badge-3.png" alt="More classes badge"></a>
                </div>
                <div class="more-classes-badge">
                    <a href="<@spring.url '/blog/articles/article-07'/>"><img src="${rc.contextPath}/static/spectrum/assets/img/more-classes-badge-4.png" alt="More classes badge"></a>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="contact" class="contact-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-6" data-scrollreveal="enter left over 1.5s">
                <h2 class="text-dark font-decorated">Contact Me</h2>
                <p>If you still hesitate or have any questions just give me a call or write an e-mail!
                    I'm looking forward to lead you into the magical and spectacular world of dance! See you in the dancing class!
                </p>
            </div>
            <div class="col-lg-5 col-lg-offset-1" data-scrollreveal="enter right over 1.5s">
                <br>
                <@spring.bind "contactForm"/>
                <form id="contact-form" method="POST" role="form" action="<@spring.url '/contact-me'/>">
                    <div id="name" class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group">
                            <label>Name</label>
                            <@spring.formInput "contactForm.name", "class='form-control', placeholder='Name'" />
                            <@spring.showErrors "<br />", "fieldValidationError" />
                        </div>

                    </div>
                    <div id="email" class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group">
                            <label>Email Address</label>
                            <@spring.formInput "contactForm.email", "class='form-control', placeholder='Email Address'" />
                            <@spring.showErrors "<br />", "fieldValidationError" />
                        </div>
                    </div>
                    <div id="message" class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group">
                            <label>Message</label>
                            <@spring.formInput "contactForm.message", "class='form-control', placeholder='Message'" />
                            <@spring.showErrors "<br />", "fieldValidationError" />
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <button type="submit" class="btn btn-lg btn-primary btn-square btn-raised">Send</button>
                        </div>
                    </div>
                    <div class="alert response-summary hidden">
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>

<script>
    $(document).ready(function () {
        var contactForm = {
            $form: $('#contact-form'),
            validationPostUri: "/contact-me.json",
            formPostUri: "/contact-me",
            type: "contact"
        };
        submitFormByAjax(contactForm);
    });
</script>

</@layout.default>