<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Login">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">

                        <h2 class="first-child">Login</h2>

						<div class="sign-form col-md-12">

							<form id="login-form" class="form-horizontal" role="form" method="POST"
								  action="<@spring.url '/login'/>">

								<div id="username" class="form-group">
									<hr>
									<div class="input-group">
										<div class="input-group-addon"><i class="fa fa-user"></i></div>
										<input class="form-control" type="text" name="username" placeholder="Username" />
									</div>
								</div>

								<div id="password" class="form-group">
									<div class="input-group">
										<div class="input-group-addon"><i class="fa fa-lock"></i></div>
										<input class="form-control" type="password" name="password" placeholder="Password" />
									</div>
								</div>

								<div class="form-group">
									<div class="checkbox">
										<label> <input type="checkbox" name="_spring_security_remember_me"> Remember me</label>
									</div>
								</div>

								<div class="form-group">
									<button type="submit" class="btn btn-primary">Login</button>
								</div>

								<div class="form-group">
									<hr>
									<a href="<@spring.url '/forgot-password'/>">Forgot password</a>
									<a class="pull-right" href="<@spring.url '/signup'/>">Sign up</a>
								</div>

								<div class="form-group">
									<#if (flashMessage)??>
										<div class="alert ${flashKind} response-summary">
										${flashMessage}
										</div>
									</#if>
								</div>

							</form>

						</div>
					</div>
				</div> <!-- / .row -->
			</div> <!-- / .container -->
    	</div>
	</div>
</section>

</@layout.default>