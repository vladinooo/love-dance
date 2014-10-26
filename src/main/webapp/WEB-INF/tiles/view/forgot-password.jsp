<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

      
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="sign-form">
				<h3 class="first-child">Forgot Password</h3>
				<hr>

				<form:form role="form" modelAttribute="forgotPasswordForm">

					<div class="form-group">
						<form:input class="form-control" type="text" name="username" placeholder="Enter your username" path="username" />
						<form:errors path="username" cssClass="fieldValidationError"></form:errors>
						<form:errors cssClass="fieldValidationError"></form:errors>
					</div>

					<button type="submit" class="btn btn-color">Reset Password</button>


				</form:form>

			</div>
		</div>
	</div> <!-- / .row -->
</div> <!-- / .container -->

