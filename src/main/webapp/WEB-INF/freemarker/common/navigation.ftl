<#import "/spring.ftl" as spring />
<#assign uri="${springMacroRequestContext.getRequestUri()}" />
<div class="col-sm-3">
	<h2 class="page-header">Pages</h2>
	<div class="navigation list-group">
		<a href="<@spring.url '/user/profile'/>" class="list-group-item <#if uri?contains('profile')>active</#if>">Profile</a>
		<a href="<@spring.url '/user/photo/upload'/>" class="list-group-item <#if uri?contains('photo')>active</#if>">Photo</a>
		<a href="<@spring.url '/user/account'/>" class="list-group-item <#if uri?contains('account')>active</#if>">Account</a>
        <a href="<@spring.url '/blog/articles'/>" class="list-group-item <#if uri?contains('blog')>active</#if>">Blog</a>
		<a href="<@spring.url '/admin/users'/>" class="list-group-item <#if uri?contains('users')>active</#if>">Users</a>
        <a href="<@spring.url '/admin/gallery'/>" class="list-group-item <#if uri?contains('gallery')>active</#if>">Gallery</a>
	</div>
</div>