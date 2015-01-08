<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Reset Password">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

                        <h2 class="first-child">Reset Password</h2>

						<div class="sign-form col-md-12">

							<@spring.bind "resetPasswordForm"/>
							<form id="reset-password-form" class="form-horizontal" role="form" method="POST"
                                  action="<@spring.url '/reset-password'/>">

                                <div id="newPassword" class="form-group">
                                    <hr>
									<@spring.formPasswordInput "resetPasswordForm.newPassword", "class='form-control', placeholder='New Password'" />
                                </div>

                                <div id="confirmNewPassword" class="form-group">
									<@spring.formPasswordInput "resetPasswordForm.confirmNewPassword", "class='form-control', placeholder='Confirm New Password'" />
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Submit</button>
                                    <hr>
                                </div>

                                <div class="form-group">
                                    <div class="alert response-summary hidden">
                                    </div>
                                </div>
			
							</form>
			
						</div>
					</div>
				</div> <!-- / .row -->
			</div> <!-- / .container -->
    	</div>
	</div>
</section>

<script>
    $(document).ready(function () {
        var resetPasswordForm = {
            $form: $('#reset-password-form'),
            validationPostUri: "/reset-password.json",
            formPostUri: window.location.pathname,
            type: "resetPassword"
        };
        submitFormByAjax(resetPasswordForm);
    });
</script>

</@layout.default>

