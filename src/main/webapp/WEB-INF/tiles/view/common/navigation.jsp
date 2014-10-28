<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="url" value="${requestScope['javax.servlet.forward.servlet_path']}" />

<div class="col-sm-3">
	<h2 class="page-header">Pages</h2>
	<div class="navigation list-group">
		<a href="/user/profile" class="list-group-item <c:if test="${fn:indexOf( url , 'profile') ne -1}">active</c:if>">Profile</a>
		<a href="/user/account" class="list-group-item <c:if test="${fn:indexOf( url , 'account') ne -1}">active</c:if>">Account</a>
		<a href="#" class="list-group-item">Gallery</a>
	</div>
</div>