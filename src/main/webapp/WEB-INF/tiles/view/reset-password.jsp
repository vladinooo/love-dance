<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

      
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="sign-form">
				<h3 class="first-child">Forgot Password</h3>
				<hr>

				<form:form role="form" modelAttribute="resetPasswordForm">

					<div class="form-group">
						<form:input class="form-control" type="password" name="password" placeholder="Password" path="password" />
						<form:errors path="password" cssClass="fieldValidationError"></form:errors>
					</div>
		
					<div class="form-group">
						<form:input class="form-control" type="password" name="retype-password" placeholder="Re-type Password" path="retypePassword" />
						<form:errors path="retypePassword" cssClass="fieldValidationError"></form:errors>
						<form:errors cssClass="fieldValidationError"></form:errors>
					</div>

					<button type="submit" class="btn btn-color">Submit</button>

				</form:form>

			</div>
		</div>
	</div> <!-- / .row -->
</div> <!-- / .container -->

