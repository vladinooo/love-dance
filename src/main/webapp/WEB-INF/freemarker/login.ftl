<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Login">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
						<div class="sign-form">
							<h3 class="first-child">Log In To Your Account</h3>
							<hr>
							<#if (flashMessage)??>
								<div class="alert alert-${flashKind} alert-dismissable">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									${flashMessage}
								</div>
							</#if>
			
							<form role="form" id="login-form" method="POST">
					
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user"></i></span>
									<input class="form-control" type="text" name="username" placeholder="Username">
								</div>
					
								<br>
					
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									<input class="form-control" type="password" name="password" placeholder="Password">
								</div>
					
								<div class="checkbox">
									<label> <input type="checkbox" name="_spring_security_remember_me"> Remember me</label>
								</div>
					
								<button type="submit" class="btn btn-color">Login</button>
								
								<hr>
							</form>
					
							<p>
								<a href="<@spring.url '/forgot-password'/>">Forgot password</a>
								<a class="pull-right" href="<@spring.url '/signup'/>">Sign up</a>
							</p>
						</div>
					</div>
				</div> <!-- / .row -->
			</div> <!-- / .container -->
    	</div>
	</div>
</section>
</@layout.default>