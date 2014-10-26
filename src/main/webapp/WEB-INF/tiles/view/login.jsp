<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

      
<div class="container">
	<div class="row">
		<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="sign-form">
				<h3 class="first-child">Log In To Your Account</h3>
				<hr>
				<c:if test="${param.error != null}">
					<div class="alert alert-danger">Invalid username and password.</div>
				</c:if>

				<c:if test="${param.logout != null}">
					<div class="alert alert-success">You have been logged out.</div>
				</c:if>

				<c:if test="${not empty flashMessage}">
					<div class="alert alert-${flashKind} alert-dismissable">
						<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
						${flashMessage}
					</div>
				</c:if>

				<form:form role="form" id="login-form" method="POST">
		
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-user"></i></span> <input
							class="form-control" type="text" name="username" id="email" placeholder="Username">
					</div>
		
					<br>
		
					<div class="input-group">
						<span class="input-group-addon"><i class="fa fa-lock"></i></span>
						<input class="form-control" type="password" name="password" id="password" placeholder="Password">
					</div>
		
					<div class="checkbox">
						<label> <input type="checkbox" name="_spring_security_remember_me"> Remember me</label>
					</div>
		
					<button type="submit" class="btn btn-color">Login</button>
					
					<hr>
				</form:form>
		
				<p>
					<a href="<c:url value="/forgot-password"/>">Forgot password</a>
					<a class="pull-right" href="<c:url value="/signup"/>">Sign up</a>
					
				</p>
			</div>
		</div>
	</div> <!-- / .row -->
</div> <!-- / .container -->

