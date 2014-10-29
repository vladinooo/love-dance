<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Reset Password">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
						<div class="sign-form">
							<h3 class="first-child">Forgot Password</h3>
							<hr>
							
							<@spring.bind "resetPasswordForm"/>
							<form role="form" method="POST">
			
								<div class="form-group">
									<@spring.formPasswordInput "resetPasswordForm.password", "class='form-control', placeholder='Password'" />
									<@spring.showErrors "<br />", "fieldValidationError" />
								</div>
					
								<div class="form-group">
									<@spring.formPasswordInput "resetPasswordForm.retypePassword", "class='form-control', placeholder='Re-type Password'" />
									<@spring.showErrors "<br />", "fieldValidationError" />
								</div>
			
								<button type="submit" class="btn btn-color">Submit</button>
			
							</form>
			
						</div>
					</div>
				</div> <!-- / .row -->
			</div> <!-- / .container -->
    	</div>
	</div>
</section>
</@layout.default>

