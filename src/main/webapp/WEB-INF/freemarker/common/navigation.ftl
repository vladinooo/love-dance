<#import "/spring.ftl" as spring />
<#assign uri="${springMacroRequestContext.getRequestUri()}" />
<nav class="navbar subnav top-nav-collapse" role="navigation">
    <div class="container">
        <div>
            <ul class="nav navbar-nav">
                <li>
                    <a href="#">
                        <i class="fa fa-calendar"></i>
                        <span class="inline hidden-xs"> My Bookings </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-th-list"></i>
                        <span class="inline hidden-xs"> My Orders </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-map-marker"></i>
                        <span class="inline hidden-xs"> Saved Addresses </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-book"></i>
                        <span class="inline hidden-xs"> Manage Blog </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-th"></i>
                        <span class="inline hidden-xs"> Manage Bookings </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-shopping-cart"></i>
                        <span class="inline hidden-xs"> Manage Shop </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-users"></i>
                        <span class="inline hidden-xs"> Manage Users </span>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-cogs"></i>
                        <span class="inline hidden-xs"> Settings </span>
                    </a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
    <!-- /.container -->
</nav>


<#--<div class="col-sm-3">-->
	<#--<h2 class="page-header">Pages</h2>-->
	<#--<div class="navigation list-group">-->
		<#--<a href="<@spring.url '/user/profile'/>" class="list-group-item <#if uri?contains('profile')>active</#if>">Profile</a>-->
		<#--<a href="<@spring.url '/user/photo/upload'/>" class="list-group-item <#if uri?contains('photo')>active</#if>">Photo</a>-->
		<#--<a href="<@spring.url '/user/account'/>" class="list-group-item <#if uri?contains('account')>active</#if>">Account</a>-->
        <#--<a href="<@spring.url '/blog/articles'/>" class="list-group-item <#if uri?contains('blog')>active</#if>">Blog</a>-->
		<#--<a href="<@spring.url '/admin/users'/>" class="list-group-item <#if uri?contains('users')>active</#if>">Users</a>-->
        <#--<a href="<@spring.url '/admin/gallery'/>" class="list-group-item <#if uri?contains('gallery')>active</#if>">Gallery</a>-->
	<#--</div>-->
<#--</div>-->
