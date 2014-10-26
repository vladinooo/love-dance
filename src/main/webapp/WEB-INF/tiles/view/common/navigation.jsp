<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="col-sm-3">
	<h2 class="page-header">Pages</h2>
	<div class="list-group">
		<a href="/users/<sec:authentication property='principal.user.id' />" class="list-group-item active">Profile</a>
		<a href="#" class="list-group-item">Gallery</a>
	</div>
</div>