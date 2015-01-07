<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Forgot Password">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

                        <h2 class="first-child">Forgot Password</h2>

						<div class="sign-form col-md-12">

							<@spring.bind "forgotPasswordForm"/>
							<form id="forgot-password-form" class="form-horizontal" role="form" method="POST"
                                  action="<@spring.url '/forgot-password'/>">

                                <div id="username" class="form-group">
                                    <hr>
                                    <div class="input-group">
                                        <div class="input-group-addon"><i class="fa fa-user"></i></div>
										<@spring.formInput "forgotPasswordForm.username", "class='form-control', placeholder='Enter your username'" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <button type="submit" class="btn btn-primary">Reset Password</button>
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
        var forgotPasswordForm = {
            $form: $('#forgot-password-form'),
            validationPostUri: "/forgot-password.json",
            formPostUri: "/forgot-password",
            type: "basic"
        };
        submitFormByAjax(forgotPasswordForm);
    });
</script>

</@layout.default>

