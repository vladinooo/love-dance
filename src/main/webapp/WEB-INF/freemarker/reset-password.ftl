<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Reset Password">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

                        <h2 class="first-child">Forgot Password</h2>

						<div class="sign-form col-md-12">

							<@spring.bind "resetPasswordForm"/>
							<form id="reset-password-form" class="form-horizontal" role="form" method="POST"
                                  action="<@spring.url '/reset-password'/>">
			
								<div class="form-group">
									<@spring.formPasswordInput "resetPasswordForm.password", "class='form-control', placeholder='Password'" />
									<@spring.showErrors "<br />", "fieldValidationError" />
								</div>
					
								<div class="form-group">
									<@spring.formPasswordInput "resetPasswordForm.confirmPassword", "class='form-control', placeholder='Confirm Password'" />
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

