<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Private Dancing Masterclass for your family or friends">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <div id="blog" class="single-article">
                        <div class="container">
                            <div class="row blog-row">
                                <div class="col-md-8 blog-col">
                                    <img src="${rc.contextPath}/static/spectrum/assets/img/demo-blog/article-06.jpg" class="img-responsive" alt="">
                                    <div class="blog-preview-content">
                                        <h2 style="text-align: center">
                                            Private Dancing Masterclass<br />for your family or friends
                                        </h2>
                                        <br />
                                        <h4 class="article-text centered">Holidays, Birthdays, Christmas - even the Bank holiday - is a perfect reason to throw a little party!</h4>
                                        <br />
                                        <h4 class="text-dark">And what a party without dancing?</h4>
                                        <p class="article-text">Well, I can help you to prepare a show dance for any occasion, or entertain guests on a party with the dancing masterclass!<br /><br />Salsa or Cha-cha-cha, Salsa, Waltz, or Tango - you can choose what you really always wanted to learn!<br /><br />You can also give the Dancing Masterclass Voucher as a gift to your friend for his birthday, parents for their anniversary or any other occasion - experience is always the best gift!</p>
                                        <br />

                                        <div class="row text-center">
                                            <div class="col-md-8 col-md-offset-2">
                                                <h2 class="text-dark">Pricing</h2>
                                                <hr class="primary">
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6 pricing-col">
                                                <div class="pricing-table">
                                                    <div class="pricing-heading" style="background-image: url('${rc.contextPath}/static/spectrum/assets/img/demo-pricing/1.jpg')">
                                                        <h2>Dancing Master class at your party</h2>
                                                    </div>
                                                    <div class="content">
                                                        <div class="price">
                                                            <span class="amount">From £60*</span>
                                                        </div>
                                                        <ul class="pricing-items list-unstyled text-center">
                                                            <li class="item">2-3 dances during the evening</li>
                                                            <li class="item">*Depends on location and time</li>
                                                            <li class="pricing-button">
                                                                <a href="<@spring.url '/#contact'/>" class="btn btn-primary btn-square btn-raised">Book</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 pricing-col">
                                                <div class="pricing-table">
                                                    <div class="pricing-heading" style="background-image: url('${rc.contextPath}/static/spectrum/assets/img/demo-pricing/1.jpg')">
                                                        <h2>Dancing Master class for a group of friends</h2>
                                                    </div>
                                                    <div class="content">
                                                        <div class="price">
                                                            <span class="amount">From £70</span>
                                                        </div>
                                                        <ul class="pricing-items list-unstyled text-center">
                                                            <li class="item">1 dance (1.5h - 2h), or 3h with coffee-brakes</li>
                                                            <li class="item">At one of my dance studios in Brighton and Hove</li>
                                                            <li class="pricing-button">
                                                                <a href="<@spring.url '/#contact'/>" class="btn btn-primary btn-square btn-raised">Book</a>
                                                            </li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <br />
                                        <h3 class="centered">Feel free to call me and I will be glad to help you!</h3>
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


