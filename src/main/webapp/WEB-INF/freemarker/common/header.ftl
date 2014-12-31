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
	                <img src="${rc.contextPath}/static/spectrum/assets/img/logo.png" alt="">
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
                    <a href="<#if uri?length &gt; 1><@spring.url '/#bookings'/><#else>#bookings</#if>">Bookings</a>
                </li>
                <li class="page-scroll">
                    <a href="<#if uri?length &gt; 1><@spring.url '/#shop'/><#else>#shop</#if>">Shop</a>
                </li>
                <li class="page-scroll">
                    <a href="<#if uri?length &gt; 1><@spring.url '/#contact'/><#else>#contact</#if>">Contact</a>
                </li>
                <li class="hidden-xs">
                    <div class="btn-group ld-action">
                        <@sec.authorize access="!isAuthenticated()">
                        <a href="<@spring.url '/login'/>" class="btn btn-ld-action">
                            <i class="fa fa-user"></i> Login
                        </a>
                        </@sec.authorize>
                        <@sec.authorize access="isAuthenticated()">
                            <a href="<@spring.url '/user/profile'/>" class="btn btn-ld-action" style="text-transform:lowercase;">
                                <i class="fa fa-user"></i> <@sec.authentication property="principal.user.username" />
                            </a>
                        </@sec.authorize>
                        <a class="btn btn-ld-action dropdown-toggle" data-toggle="dropdown">
                            <span class="caret"></span>
                            <span class="sr-only">Toggle Dropdown</span>
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <@sec.authorize access="!isAuthenticated()">
                                <li><a href="<@spring.url '/signup'/>">Sign Up</a></li>
                            </@sec.authorize>
                            <@sec.authorize access="isAuthenticated()">
                                <li><a href="#">My Bookings</a></li>
                                <li><a href="#">My Orders</a></li>
                                <li><a href="#">Saved Addresses</a></li>
                                <li><a href="#">Manage Blog</a></li>
                                <li><a href="#">Manage Bookings</a></li>
                                <li><a href="#">Manage Shop</a></li>
                                <li><a href="#">Manage Users</a></li>
                                <li><a href="#">Settings</a></li>
                                <li class="divider"></li>
                                <li>
                                    <form id="logoutForm" action="<@spring.url '/logout'/>" method="post"></form>
                                    <a href="#" onclick="document.getElementById('logoutForm').submit()">Log Out</a>
                                </li>
                            </@sec.authorize>
                        </ul>
                    </div>
                </li>
                <li class="visible-xs">
                    <form id="logoutForm" action="<@spring.url '/logout'/>" method="post"></form>
                    <a href="#" onclick="document.getElementById('logoutForm').submit()">Log Out</a>
                </li>
              </ul>
          </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>
