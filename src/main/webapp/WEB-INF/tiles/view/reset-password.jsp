<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<script>
	$(".topic").show();
</script>

      
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="sign-form">
				<h3 class="first-child">Forgot Password</h3>
				<hr>

				<form:form role="form" modelAttribute="resetPasswordForm">

					<form:errors cssClass="fieldValidationError"></form:errors>

					<div class="form-group">
						<form:password class="form-control margin-bottom-xs"
							name="password" id="password" placeholder="Password"
							path="password" data-toggle="popover" data-placement="left"
							data-trigger="focus" data-content="Between 5 - 20 characters"
							data-original-title="Password" />
						<form:errors path="password" cssClass="fieldValidationError"></form:errors>
					</div>
		
					<div class="form-group">
						<form:password class="form-control" id="confirm_password"
							name="confirm_password" placeholder="Re-type password"
							path="retypePassword" data-toggle="popover" data-placement="left"
							data-trigger="focus" data-content="Between 5 - 20 characters"
							data-original-title="Re-type password" />
						<form:errors path="retypePassword" cssClass="fieldValidationError"></form:errors>
					</div>

					<button type="submit" class="btn btn-color">Submit</button>

				</form:form>

			</div>
		</div>
	</div> <!-- / .row -->
</div> <!-- / .container -->

