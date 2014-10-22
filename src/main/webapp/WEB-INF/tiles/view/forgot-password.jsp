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

				<form:form role="form" modelAttribute="forgotPasswordForm">

					<form:errors cssClass="fieldValidationError"></form:errors>

					<div class="form-group">
						<form:input class="form-control" type="text" name="email"
							id="email" placeholder="Your email" path="email"
							data-toggle="popover" data-placement="left" data-trigger="focus"
							data-content="Enter a valid email here."
							data-original-title="Email" />
						<form:errors path="email" cssClass="fieldValidationError"></form:errors>
					</div>

					<button type="submit" class="btn btn-color">Reset Password</button>


				</form:form>

			</div>
		</div>
	</div> <!-- / .row -->
</div> <!-- / .container -->

