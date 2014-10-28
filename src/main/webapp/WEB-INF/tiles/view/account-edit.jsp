<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container portfolio-modal">
	<div class="row">
	
		<tiles:insertAttribute name="navigation"></tiles:insertAttribute>

		<div class="col-sm-9">
		
			<h2 class="page-header">Edit Account</h2>
			
			<form:form modelAttribute="accountEditForm" class="form-horizontal" role="form">
			
				<table class="table table-striped">
					<tbody>
						<tr>
							<td>Email:</td>
							<td><form:input path="email" class="form-control" placeholder="Email" /></td>
							<td><form:errors cssClass="fieldValidationError" path="email" /></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><form:input class="form-control" type="password" name="password" placeholder="Password" path="password" /></td>
							<td><form:errors path="password" cssClass="fieldValidationError"></form:errors></td>
						</tr>
						<tr>
							<td>Re-type Password:</td>
							<td><form:input class="form-control" type="password" name="retype-password" placeholder="Re-type Password" path="retypePassword" /></td>
							<td>
								<form:errors path="retypePassword" cssClass="fieldValidationError"></form:errors>
								<form:errors cssClass="fieldValidationError"></form:errors>
							</td>
						</tr>
					</tbody>
				</table>
				
				<button type="submit" class="btn btn-default pull-right">Update</button>

        	</form:form>
				
		</div>
	</div>
</div>