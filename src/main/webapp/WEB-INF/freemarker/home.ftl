<#import "common/default.ftl" as layout>
<@layout.default "Welcome to Love Dance">
<header class="intro-img intro-dark-bg" style="background-image: url(/static/spectrum/assets/img/demo-bgs/demo-bg-1.jpg)" data-stellar-background-ratio="0.5" data-stellar-vertical-offset="50">
    <div class="overlay"></div>
    <div class="intro-body" data-scrollreveal="move 0 over 1.5s">
        <div class="container">
            <div class="intro-welcome">Welcome to <h2 class="intro-welcome">Love Dance</h2></div>
            <br>
            <h1 class="brand-heading">
                <span class="text-primary">WEDDING DANCE</span><br>WITH LOVE<span class="text-primary"> FOR THOSE WHO ARE</span> IN LOVE
            </h1>
            <hr class="light">
            <h3>Tell your love story with the dance</h3>
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
                <p>Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text Some text </p>
                <p class="demo-text">Love Dance is pure fun!</p>
            </div>
        </div>
    </div>
</section>

<section class="about-2 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-lg-offset-1">
                <img src="/static/spectrum/assets/img/demo-portraits/portrait-2.jpg" class="img-circle img-responsive img-centered dark-faded-border" alt="">
            </div>
            <div class="col-lg-5 text-center">
                <h2>About ME</h2>
                <hr class="primary">
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Reprehenderit, necessitatibus, inventore, nam quidem quasi expedita ab magnam maxime optio officiis dicta dolorem exercitationem sunt. Modi, quaerat impedit voluptatem aspernatur praesentium.</p>
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
                    <p style="font-size:24px">Every couple is unique, so every need a unique dance. I never know for sure what dance should it be before I meet and talk to couple - this is where the beautiful wedding dance starts.</p>
                </div>
            </div>
        </div>
    </div>
</aside>

<section id="benefits" class="services-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2 text-center">
                <h2>Benefits</h2>
                <hr class="primary">
                <p>If you still haven't decided yet whether you need learn wedding dance or not here is some advantages that you will have for sure if you will join my lessons!</p>
            </div>
            <div class="col-lg-12 text-center" data-scrollreveal="enter bottom over 1.5s">
                <ul id="services-1-carousel" class="icon-effect list-inline">
                    <!-- ICON USAGE: The icons in this example are generated using Font Awesome unicodes. To use different icons you will need to create a custom CSS class like the ones used below (ex. icon-code, or icon-envelope-o). -->
                    <li class="item">
                        <span class="icon icon-code"></span>
                        <h3>Love Improving</h3>
                        <p>Wedding dance can be first big cooperative challenge of your couple.</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-envelope-o"></span>
                        <h3>Fun</h3>
                        <p>Learn something new is always exiting and I promise you will enjoy your time!</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-mobile"></span>
                        <h3>It's quick!</h3>
                        <p>Only 5 lessons and you will be dancing  amazing wedding first dance!</p>
                    </li>
                    <li class="item">
                        <span class="icon icon-info-circle"></span>
                        <h3>Memory</h3>
                        <p>You will get the- video from lessons to remember this good time forever or even have a look to refresh it before wedding.</p>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</section>

<section id="experience" class="portfolio-1">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <h2>Experience</h2>
                <hr class="primary">
                <ul class="list-inline hidden-xs" id="filters">
                    <li>
                        <button data-filter="*" type="button" class="btn btn-primary btn-square btn-raised">All</button>
                    </li>
                    <li>
                        <button data-filter=".web" type="button" class="btn btn-primary btn-square btn-raised">Website</button>
                    </li>
                    <li>
                        <button data-filter=".graphic" type="button" class="btn btn-primary btn-square btn-raised">Graphic</button>
                    </li>
                    <li>
                        <button data-filter=".print" type="button" class="btn btn-primary btn-square btn-raised">Print</button>
                    </li>
                </ul>
            </div>
        </div>
        <div class="row" data-scrollreveal="enter bottom over 1.5s">
            <div class="isotope">
                <div class="col-sm-4 portfolio-item web">
                    <a href="#portfolio-modal-1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/1.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item graphic">
                    <a href="#portfolio-modal-2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/2.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item print">
                    <a href="#portfolio-modal-1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/3.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item web">
                    <a href="#portfolio-modal-2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/4.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item graphic">
                    <a href="#portfolio-modal-1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/5.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item print">
                    <a href="#portfolio-modal-2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/6.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item web">
                    <a href="#portfolio-modal-2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/7.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item graphic">
                    <a href="#portfolio-modal-1" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/8.jpg" class="img-centered" alt="">
                    </a>
                </div>
                <div class="col-sm-4 portfolio-item print">
                    <a href="#portfolio-modal-2" class="portfolio-link" data-toggle="modal">
                        <div class="caption">
                            <div class="caption-content">
                                <h3><i class="fa fa-search fa-2x"></i>
                                </h3>
                            </div>
                        </div>
                        <img src="/static/spectrum/assets/img/demo-portfolio/9.jpg" class="img-centered" alt="">
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
                <a href="#" class="blog-preview-img">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search fa-3x"></i>
                        </div>
                    </div>
                    <img src="/static/spectrum/assets/img/demo-blog/1.jpg" class="img-responsive" alt="">
                </a>
                <div class="blog-preview-content">
                    <h3>
                        <a href="#">Blog Post Title</a>
                    </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quisquam, sunt, corporis.</p>
                    <div class="continue"><a href="#">Continue Reading &rarr;</a>
                    </div>
                    <ul class="meta list-inline">
                        <li>February 31, 2014</li>
                        <li>9 Comments</li>
                        <li><i class="fa fa-heart text-primary"></i> 12</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 blog-col" data-scrollreveal="enter bottom over 1.5s">
                <a href="#" class="blog-preview-img">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search fa-3x"></i>
                        </div>
                    </div>
                    <img src="/static/spectrum/assets/img/demo-blog/2.jpg" class="img-responsive" alt="">
                </a>
                <div class="blog-preview-content">
                    <h3>
                        <a href="#">Blog Post Title</a>
                    </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quisquam, sunt, corporis.</p>
                    <div class="continue"><a href="#">Continue Reading &rarr;</a>
                    </div>
                    <ul class="meta list-inline">
                        <li>February 31, 2014</li>
                        <li>9 Comments</li>
                        <li><i class="fa fa-heart text-primary"></i> 12</li>
                    </ul>
                </div>
            </div>
            <div class="col-md-4 blog-col" data-scrollreveal="enter right over 1.5s">
                <a href="#" class="blog-preview-img">
                    <div class="caption">
                        <div class="caption-content">
                            <i class="fa fa-search fa-3x"></i>
                        </div>
                    </div>
                    <img src="/static/spectrum/assets/img/demo-blog/3.jpg" class="img-responsive" alt="">
                </a>
                <div class="blog-preview-content">
                    <h3>
                        <a href="#">Blog Post Title</a>
                    </h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nam, quisquam, sunt, corporis.</p>
                    <div class="continue"><a href="#">Continue Reading &rarr;</a>
                    </div>
                    <ul class="meta list-inline">
                        <li>February 31, 2014</li>
                        <li>9 Comments</li>
                        <li><i class="fa fa-heart text-primary"></i> 12</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>

<section id="pricing" class="pricing-1">
    <div class="container">
        <div class="row text-center">
            <div class="col-md-8 col-md-offset-2">
                <h2>Pricing</h2>
                <hr class="primary">
                <p>Three licensing options are availalbe for the Spectrum Template. A single application license, a multiple application license, and an extended license are the three options availalbe.</p>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4 pricing-col" data-scrollreveal="enter left over 1.5s">
                <div class="pricing-table">
                    <div class="pricing-heading" style="background-image: url('/static/spectrum/assets/img/demo-pricing/1.jpg')">
                        <h2>Single</h2>
                    </div>
                    <div class="content">
                        <div class="price">
                            <span class="amount">15</span>
                            <span class="period">one time</span>
                        </div>
                        <ul class="pricing-items list-unstyled text-center">
                            <li class="item">Pay buy each every lesson</li>
                            <li class="item">Have as much lessons as you need</li>
                            <li class="item">One lesson - 60 min</li>
                            <li class="pricing-button">
                                <a href="#" class="btn btn-primary btn-square btn-raised">Contact Me</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 pricing-col" data-scrollreveal="enter bottom over 1.5s">
                <div class="pricing-table featured">
                    <div class="pricing-heading" style="background-image: url('/static/spectrum/assets/img/demo-pricing/2.jpg')">
                        <h2>5 lessons package</h2>
                    </div>
                    <div class="content">
                        <div class="price">
                            <span class="amount">55</span>
                            <span class="period">one time</span>
                        </div>
                        <ul class="pricing-items list-unstyled text-center">
                            <li class="item">Pay by card for your complete Wedding dance in 5 lessons</li>
                            <li class="item">Package: 5 lessons, 60 min each.</li>
                            <li class="item">Contact me to arrange comfortable time and see you in dancing class!</li>
                            <li class="pricing-button">
                                <a href="#" class="btn btn-primary btn-square btn-raised">Buy Now</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-4 pricing-col" data-scrollreveal="enter right over 1.5s">
                <div class="pricing-table">
                    <div class="pricing-heading" style="background-image: url('/static/spectrum/assets/img/demo-pricing/1.jpg')">
                        <h2>Gift 6 lessons package</h2>
                    </div>
                    <div class="content">
                        <div class="price">
                            <span class="amount">65</span>
                            <span class="period">one time</span>
                        </div>
                        <ul class="pricing-items list-unstyled text-center">
                            <li class="item">Pay by card for certificate "Wedding dance in 6 lessons"</li>
                            <li class="item">This is a perfect gift for your friends who are getting married</li>
                            <li class="item">Package: 6 lessons, 60 min each</li>
                            <li class="pricing-button">
                                <a href="#" class="btn btn-primary btn-square btn-raised">Buy Now</a>
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
                <h2 class="allcaps">LOVE DANCE - WEDDING DANCE WITH LOVE FOR THOSE WHO ARE IN LOVE</h2>
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
                <h2>Contact Us</h2>
                <p>Spectrum comes loaded with a working contact form! Just follow the instructions in the documentation to get your form working. All you need to do is change an email address, no code writing required!</p>
                <p>The contact form to the right is a demo form and will not send email to Start Bootstrap. If you have a question about the theme, please contact us through our WrapBootstrap profile.</p>
            </div>
            <div class="col-lg-5 col-lg-offset-1" data-scrollreveal="enter right over 1.5s">
                <br>
                <form name="sentMessage" id="contactForm" novalidate>
                    <div class="row control-group">
                        <div class="form-group col-xs-12 floating-label-form-group controls">
                            <label>Name</label>
                            <input type="text" class="form-control" placeholder="Name" id="name" required data-validation-required-message="Please enter your name.">
                            <p class="help-block text-danger"></p>
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