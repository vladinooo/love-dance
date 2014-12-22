<#import "/spring.ftl" as spring />
<#import "common/default.ftl" as layout>
<@layout.default "Welcome to Love Dance">
<header class="intro-img intro-dark-bg" style="background-image: url(${rc.contextPath}/static/spectrum/assets/img/demo-bgs/demo-bg-4.jpg)" data-stellar-background-ratio="0.5" data-stellar-vertical-offset="50">
    <div class="overlay"></div>
    <div class="intro-body" data-scrollreveal="move 0 over 1.5s">
        <div class="container">
            <h1 class="brand-heading">
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
                <h2>About LOVE DANCE</h2>
                <hr class="primary">
                <div class="alert lovedance-info" role="alert">Have you ever wanted to move easily, softly, fly on the dancing floor and enjoy every step? Then you are in a right place.</div>
                <div class="alert lovedance-info" role="alert">LOVE DANCE is a project which helps people not only to learn dancing movements but actually start dancing naturally and magically</div>
                <div class="alert lovedance-info" role="alert">LOVE DANCE offers wedding dance classes as well as drop-in BODY-workshops <br />"Strong, Sexy, Flexible, Free"</div>
                <div class="alert lovedance-info" role="alert">LOVE DANCE also specialises on dancing lessons for LGBT couples so feel free to read about it in our blog</div>
                <div class="alert lovedance-info" role="alert">LOVE DANCE is extremely friendly so don't hesitate to call, ask questions, subscribe and leave your comments</div>
                <div class="alert lovedance-info" role="alert">Lessons can be run in various places in Brighton and Hove</div>
                <div class="alert lovedance-info" role="alert">И мы говорим по-русски тоже;)</div>
                <br />
                <h2>Build it your way - Love Dance is pure fun!</h2>
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
                <h2 class="text-dark">About ME</h2>
                <hr class="primary">
                <p>I'm a choreographer with 10 year of experience, fitness coach and actress. I found myself passionate
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
                    <h2>I taught more than 100 couples</h2>
                    <hr class="light">
                    <p style="font-size:24px">Every couple is unique, and therefore each need a unique dance. I never know for
                        sure what dance should it be before I meet and talk to couple - this is where the beautiful
                        wedding dance starts.</p>
                </div>
            </div>
        </div>
    </div>
</aside>

<section id="benefits" class="services-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <h2 class="text-dark">Benefits</h2>
                <hr class="primary">
                <p>If you still haven't decided yet whether you need learn wedding dance or not here is some advantages that you will have for sure if you will join my lessons!</p>
            </div>
            <div class="col-lg-12 text-center" data-scrollreveal="enter bottom over 1.5s">
                <ul id="services-1-carousel" class="icon-effect list-inline">
                    <!-- ICON USAGE: The icons in this example are generated using Font Awesome unicodes. To use different icons you will need to create a custom CSS class like the ones used below (ex. icon-code, or icon-envelope-o). -->
                    <li class="item">
                        <span class="icon icon-heart"></span>
                        <h3>Love Improving</h3>
                        <p>Wedding dance can be a first big cooperative challenge of the couple. See how well you know each other!</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-smile"></span>
                        <h3>Fun</h3>
                        <p>Learning something new is always exiting and I promise you will enjoy your time!</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-clock"></span>
                        <h3>It's quick!</h3>
                        <p>Only 5 lessons and you will be dancing amazing wedding dance!</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-image"></span>
                        <h3>Memory</h3>
                        <p>You will get a video after each lesson to remember the good time or even have a look to refresh it before the big day.</p>
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
                <h2 class="text-dark">Experience</h2>
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
                <h2>From Our Blog</h2>
                <hr class="primary mb">
            </div>
        </div>
        <div class="row blog-row">
            <div class="col-md-4 blog-col" data-scrollreveal="enter left over 1.5s">
                <a href="<@spring.url '/blog/articles/article'/>" class="blog-preview-img">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search fa-3x"></i>
                        </div>
                    </div>
                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/1.jpg" class="img-responsive" alt="">
                </a>
                <div class="blog-preview-content">
                    <h3>
                        <a href="<@spring.url '/blog/articles/article'/>">Blog Post Title</a>
                    </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quisquam, sunt, corporis.</p>
                    <div class="continue"><a href="<@spring.url '/blog/articles/article'/>">Continue Reading &rarr;</a>
                    </div>
                    <ul class="meta list-inline">
                        <li>February 31, 2014</li>
                        <li>9 Comments</li>
                        <li><i class="fa fa-heart text-primary"></i> 12</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 blog-col" data-scrollreveal="enter bottom over 1.5s">
                <a href="<@spring.url '/blog/articles/article'/>" class="blog-preview-img">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search fa-3x"></i>
                        </div>
                    </div>
                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/2.jpg" class="img-responsive" alt="">
                </a>
                <div class="blog-preview-content">
                    <h3>
                        <a href="<@spring.url '/blog/articles/article'/>">Blog Post Title</a>
                    </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quisquam, sunt, corporis.</p>
                    <div class="continue"><a href="<@spring.url '/blog/articles/article'/>">Continue Reading &rarr;</a>
                    </div>
                    <ul class="meta list-inline">
                        <li>February 31, 2014</li>
                        <li>9 Comments</li>
                        <li><i class="fa fa-heart text-primary"></i> 12</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 blog-col" data-scrollreveal="enter right over 1.5s">
                <a href="<@spring.url '/blog/articles/article'/>" class="blog-preview-img">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search fa-3x"></i>
                        </div>
                    </div>
                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/3.jpg" class="img-responsive" alt="">
                </a>
                <div class="blog-preview-content">
                    <h3>
                        <a href="<@spring.url '/blog/articles/article'/>">Blog Post Title</a>
                    </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quisquam, sunt, corporis.</p>
                    <div class="continue"><a href="<@spring.url '/blog/articles/article'/>">Continue Reading &rarr;</a>
                    </div>
                    <ul class="meta list-inline">
                        <li>February 31, 2014</li>
                        <li>9 Comments</li>
                        <li><i class="fa fa-heart text-primary"></i> 12</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h2 class="pull-right"><a href="<@spring.url '/blog/articles'/>" class="light-link">All Articles ></a></h2>
            </div>
        </div>
    </div>
</section>

<section id="pricing" class="pricing-1">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-8 col-md-offset-2">
                <h2 class="text-dark">Pricing</h2>
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
                                <a href="#" class="btn btn-primary btn-square btn-raised">Book</a>
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
                                <a href="#" class="btn btn-primary btn-square btn-raised">Book</a>
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
                                <a href="#" class="btn btn-primary btn-square btn-raised">Book</a>
                            </li>
                        </ul>
                    </div>
                </div>
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
                <h2 class="text-yellow">WEDDING DANCE WITH LOVE <br />FOR THOSE WHO ARE IN LOVE</h2>
                <br>
                <h2>Phone: 07476 495494</h2>
            </div>
        </div>
    </div>
</section>

<section id="contact" class="contact-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-6" data-scrollreveal="enter left over 1.5s">
                <h2 class="text-dark">Contact Me</h2>
                <p>If you still hesitate or have any questions just give me a call or write an e-mail!
                    I'm looking forward to lead you to the magic and spectacular world of dance!
                    See you in dancing class!</p>
            </div>
            <div class="col-lg-5 col-lg-offset-1" data-scrollreveal="enter right over 1.5s">
                <br>
                <@spring.bind "contactForm"/>
                <form method="POST" role="form">
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Name</label>
                            <@spring.formInput "contactForm.name", "class='form-control', placeholder='Name', id='name' required data-validation-required-message='Please enter your name.'" />
                            <@spring.showErrors "<br />", "fieldValidationError" />
                        </div>

                    </div>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Email Address</label>
                            <input type="email" class="form-control" placeholder="Email Address" id="email" required data-validation-required-message="Please enter your email address.">
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Message</label>
                            <textarea rows="5" class="form-control" placeholder="Message" id="message" required data-validation-required-message="Please enter a message."></textarea>
                            <p class="help-block text-danger"></p>
                        </div>
                    </div>
                    <br>
                    <div id="success"></div>
                    <div class="row">
                        <div class="form-group col-xs-12">
                            <button type="submit" class="btn btn-lg btn-primary btn-square btn-raised">Send</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</section>
</@layout.default>