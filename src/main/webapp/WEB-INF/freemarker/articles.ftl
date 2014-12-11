<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Articles">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">



                        <div id="blog" class="blog-1">
                            <div class="container">
                                <div class="row blog-row">
                                    <div class="col-md-4 blog-col" data-scrollreveal="enter left over 1.5s">
                                        <a href="<@spring.url '/blog/articles/article'/>" class="blog-preview-img">
                                            <div class="caption">
                                                <div class="caption-content">
                                                    <i class="fa fa-search fa-3x"></i>
                                                </div>
                                            </div>
                                            <img src="/static/spectrum/assets/img/demo-blog/1.jpg" class="img-responsive" alt="">
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
                                            <img src="/static/spectrum/assets/img/demo-blog/2.jpg" class="img-responsive" alt="">
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
                                            <img src="/static/spectrum/assets/img/demo-blog/3.jpg" class="img-responsive" alt="">
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
                            </div>
                        </div>



                </div>
            </div>
        </div>
    </div>
</section>
</@layout.default>