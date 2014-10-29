<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<#assign uri="${springMacroRequestContext.getRequestUri()}" />
<nav class="navbar navbar-dark navbar-fixed-top top-nav-collapse" role="navigation">
    <div class="container">
        <div class="navbar-header page-scroll">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="<#if uri?length &gt; 1><@spring.url '/#page-top'/><#else>#page-top</#if>">
	            <span class="logo">
	                <img src="/static/spectrum/assets/img/logo.png" alt="">
	            </span>
            </a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
            <ul class="nav navbar-nav">
                <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                <li class="hidden">
                    <a href="#page-top"></a>
                </li>
                <li class="page-scroll">
                    <a href="<#if uri?length &gt; 1><@spring.url '/#about'/><#else>#about</#if>">About</a>
                </li>
                <li class="page-scroll">
                    <a href="<#if uri?length &gt; 1><@spring.url '/#benefits'/><#else>#benefits</#if>">Benefits</a>
                </li>
                <li class="page-scroll">
                    <a href="<#if uri?length &gt; 1><@spring.url '/#experience'/><#else>#experience</#if>">Experience</a>
                </li>
                <li class="page-scroll">
                    <a href="<#if uri?length &gt; 1><@spring.url '/#blog'/><#else>#blog</#if>">Blog</a>
                </li>
                <li class="page-scroll">
                    <a href="<#if uri?length &gt; 1><@spring.url '/#pricing'/><#else>#pricing</#if>">Pricing</a>
                </li>
                <li class="page-scroll">
                    <a href="<#if uri?length &gt; 1><@spring.url '/#contact'/><#else>#contact</#if>">Contact</a>
                </li>
                <li style="color:#f4f5f7;padding-top: 15px;padding-bottom:15px;">|</li>
                <@sec.authorize access="!isAuthenticated()">
                <li>
                 	<a href="<@spring.url '/login'/>"><i class="fa fa-sign-in"></i> Log In</a>
                </li>
                <li>
                	<a href="<@spring.url '/signup'/>"><i class="fa fa-arrow-circle-down"></i> Sign Up</a>
                </li>
				</@sec.authorize>
				
				<@sec.authorize access="isAuthenticated()">
				<li>
					<a style="text-transform:lowercase;" href="/user/profile"><span class="fa fa-user"></span> <@sec.authentication property="principal.user.username" /></a>
				</li>
				<li>
			    	<form id="logoutForm" action="<@spring.url '/logout'/>" method="post"></form>    	
			       	<a href="#" onclick="document.getElementById('logoutForm').submit()"><i class="fa fa-sign-out"></i> Log Out</a>
			    </li> 	
				</@sec.authorize>
              </ul>
          </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
