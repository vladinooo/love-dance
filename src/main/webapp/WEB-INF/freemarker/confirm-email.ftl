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

							<@spring.bind "resendEmailConfirmForm"/>
							<form id="resend-email-confirm-form" class="form-horizontal" role="form" method="POST"
								  action="<@spring.url '/signup/confirm'/>">

                                <div id="email" class="form-group hidden">
                                    <div class="input-group">
										<@spring.formInput "resendEmailConfirmForm.email", "class='form-control', placeholder='Email'" />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <hr>
									<div class="well">
										<#if (emailConfirmInfo)??>${emailConfirmInfo}</#if>
									</div>
                                    <hr>
								</div>

								<#if (account)??>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary pull-right">Resend Confirmation Email</button>
                                    </div>
								</#if>


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
        var resendEmailConfirmForm = {
            $form: $('#resend-email-confirm-form'),
            validationPostUri: "/signup/confirm.json",
            formPostUri: "/signup/confirm",
            type: "basic"
        };
        submitFormByAjax(resendEmailConfirmForm);
    });
</script>

</@layout.default>