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
			
			<form:form id="profile-edit-form" modelAttribute="profileEditForm" class="form-horizontal" role="form">
			
				<table class="table table-striped wrap-table">
					<tbody>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2"><img class="profile-picture" src="${pageContext.request.contextPath}/static/images/profile-picture.jpg" alt="Profile Picture"></div>
									<div class="col-sm-10"></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Username:</div>
									<div class="col-sm-10"><sec:authentication property="principal.user.username" /></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Firstname:</div>
									<div class="col-sm-5"><form:input path="firstname" class="form-control" placeholder="Firstname" /></div>
									<div class="col-sm-5"><form:errors cssClass="fieldValidationError" path="firstname" /></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Surname:</div>
									<div class="col-sm-5"><form:input path="surname" class="form-control" placeholder="Surname" /></div>
									<div class="col-sm-5"><form:errors cssClass="fieldValidationError" path="surname" /></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Phone:</div>
									<div class="col-sm-5"><form:input path="phone" class="form-control" placeholder="Phone" /></div>
									<div class="col-sm-5"><form:errors cssClass="fieldValidationError" path="phone" /></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Biography:</div>
									<div class="col-sm-5">
										<input id="textareaInput" value="${user.biography}" hidden="true"/>
										<form:textarea  id="textareaOutput" path="biography" class="form-control" placeholder="Biography" rows="10"/>
									</div>
									<div class="col-sm-5"><form:errors cssClass="fieldValidationError" path="biography" /></div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>
				
				<button type="submit" class="btn btn-default pull-right">Update</button>

        	</form:form>
				
		</div>
	</div>
</div>


<script>

//-------- Biography content textarea --------------//
$(document).ready(function() {
	$("#textareaOutput").val($("#textareaInput").val());
});

</script>