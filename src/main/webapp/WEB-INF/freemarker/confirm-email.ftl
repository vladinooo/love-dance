<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Confirm Your Email Address">
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

                        <h3 class="first-child">Confirm Your Email Address</h3>

						<div class="sign-form col-md-12">

							<form id="resend-confirm-email-form" class="form-horizontal" role="form" method="POST"
								  action="<@spring.url '/login'/>">

                                <div class="form-group">
                                    <hr>
									<div class="well">
										<#if (verifyEmailInfo)??>${verifyEmailInfo}</#if>
									</div>
                                    <hr>
								</div>

								<div class="form-group">
									<button type="submit" class="btn btn-primary pull-right">Resend Confirmation Email</button>
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
        var resendConfirmEmailForm = {
            $form: $('#resend-confirm-email-form'),
            validationPostUri: "/signup.json",
            formPostUri: "/signup",
            type: "basic"
        };
        submitFormByAjax(resendConfirmEmailForm);
    });
</script>

</@layout.default>