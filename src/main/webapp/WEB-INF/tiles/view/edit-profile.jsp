<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container portfolio-modal">
	<div class="row">
	
		<tiles:insertAttribute name="navigation"></tiles:insertAttribute>

		<div class="col-sm-9">
		
			<h2 class="page-header">Edit Profile</h2>
			
			<form:form modelAttribute="userEditForm" class="form-horizontal" role="form">
			
				<table class="table table-striped">
					<tbody>
						<tr>
							<td colspan="3">
								<img class="profile-picture" src="${pageContext.request.contextPath}/static/images/profile-picture.jpg" alt="Profile Picture">
							</td>
						</tr>
						<tr>
							<td width="150px">User:</td>
							<td colspan="2"><sec:authentication property="principal.user.username" /></td>
						</tr>
						<tr>
							<td>Firstname:</td>
							<td><form:input path="firstname" class="form-control" placeholder="Firstname" /></td>
							<td width="350px"><form:errors cssClass="error" path="firstname" /></td>
						</tr>
						<tr>
							<td>Surname:</td>
							<td><form:input path="surname" class="form-control" placeholder="Surname" /></td>
							<td><form:errors cssClass="error" path="surname" /></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><form:input path="email" class="form-control" placeholder="Email" /></td>
							<td><form:errors cssClass="error" path="email" /></td>
						</tr>
						<tr>
							<td>Phone:</td>
							<td><form:input path="phone" class="form-control" placeholder="Phone" /></td>
							<td><form:errors cssClass="error" path="phone" /></td>
						</tr>
					</tbody>
				</table>
				
				<button type="submit" class="btn btn-default pull-right">Update</button>

        	</form:form>
				
		</div>
	</div>
</div>