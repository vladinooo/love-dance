<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="sign-form">
				<h3 class="first-child">Create New Account</h3>
				<hr>
		
				<form:form id="signup-form" modelAttribute="signupForm" method="POST" role="form">
				
					<div class="form-group">
						<form:input class="form-control" type="text" name="username" placeholder="Username" path="username" />
						<form:errors path="username" cssClass="fieldValidationError"></form:errors>
					</div>
		
					<div class="form-group">
						<form:input class="form-control" type="text" name="email" placeholder="Email" path="email"/>
						<form:errors path="email" cssClass="fieldValidationError"></form:errors>
					</div>
		
					<div class="form-group">
						<form:input class="form-control" type="password" name="password" placeholder="Password" path="password" />
						<form:errors path="password" cssClass="fieldValidationError"></form:errors>
					</div>
		
					<div class="form-group">
						<form:input class="form-control" type="password" name="retype-password" placeholder="Re-type Password" path="retypePassword" />
						<form:errors path="retypePassword" cssClass="fieldValidationError"></form:errors>
						<form:errors cssClass="fieldValidationError"></form:errors>
					</div>
		
					<div class="form-group">
						<button type="submit" id="createUserBtn" class="btn btn-color">Create account</button>
					</div>
					
					<hr>
					
				</form:form>
				
				<p>
					<a href="<c:url value="/login"/>">Log in</a>
				</p>
				
			</div>
		</div>
	</div> <!-- / .row -->
</div> <!-- / .container -->
