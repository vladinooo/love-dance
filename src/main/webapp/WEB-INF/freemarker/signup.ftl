<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Signup">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

                        <h2 class="first-child">Create New Account</h2>

						<div class="sign-form col-md-12">

							<@spring.bind "signupForm"/>
							<form id="signup-form" class="form-horizontal" role="form" method="POST"
								  action="<@spring.url '/signup'/>">

								<div id="username" class="form-group">
									<hr>
									<div class="input-group">
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
										<@spring.formInput "signupForm.username", "class='form-control', placeholder='Username'" />
									</div>
								</div>

								<div id="email" class="form-group">
									<div class="input-group">
										<div class="input-group-addon"><i class="fa fa-at"></i></div>
										<@spring.formInput "signupForm.email", "class='form-control', placeholder='Email'" />
									</div>
								</div>

								<div id="password" class="form-group">
									<div class="input-group">
										<div class="input-group-addon"><i class="fa fa-lock"></i></div>
										<@spring.formPasswordInput "signupForm.password", "class='form-control', placeholder='Password'" />
									</div>
								</div>

								<div id="confirmPassword" class="form-group">
									<div class="input-group">
										<div class="input-group-addon"><i class="fa fa-lock"></i></div>
										<@spring.formPasswordInput "signupForm.confirmPassword", "class='form-control', placeholder='Confirm Password'" />
									</div>
								</div>

								<div class="form-group">
									<button type="submit" class="btn btn-primary">Create Account</button>
								</div>

								<div class="form-group">
									<hr>
									<a href="<@spring.url '/login'/>">Log in</a>
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
        var signupForm = {
            $form: $('#signup-form'),
            validationPostUri: "/signup.json",
            formPostUri: "/signup",
            type: "signup"
        };
        submitFormByAjax(signupForm);
    });
</script>

</@layout.default>