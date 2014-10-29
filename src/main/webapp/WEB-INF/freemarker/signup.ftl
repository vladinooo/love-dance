<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Signup">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
						<div class="sign-form">
							<h3 class="first-child">Create New Account</h3>
							<hr>
							<@spring.bind "signupForm"/>
							<form id="signup-form" method="POST" role="form">
							
								<div class="form-group">
									<@spring.formInput "signupForm.username", "class='form-control', placeholder='Username'" />
									<@spring.showErrors "<br />", "fieldValidationError" />
								</div>
					
								<div class="form-group">
									<@spring.formInput "signupForm.email", "class='form-control', placeholder='Email'" />
									<@spring.showErrors "<br />", "fieldValidationError" />
								</div>
					
								<div class="form-group">
									<@spring.formPasswordInput "signupForm.password", "class='form-control', placeholder='Password'" />
									<@spring.showErrors "<br />", "fieldValidationError" />
								</div>
					
								<div class="form-group">
									<@spring.formPasswordInput "signupForm.retypePassword", "class='form-control', placeholder='Re-type Password'" />
									<@spring.showErrors "<br />", "fieldValidationError" />
								</div>
					
								<div class="form-group">
									<button type="submit" id="createUserBtn" class="btn btn-color">Create account</button>
								</div>
								
								<hr>
								
							</form>
							
							<p>
								<a href="<@spring.url '/login'/>">Log in</a>
							</p>
							
						</div>
					</div>
				</div> <!-- / .row -->
			</div> <!-- / .container -->
    	</div>
	</div>
</section>
</@layout.default>