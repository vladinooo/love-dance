<#import "../../common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "404 error">
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="alert alert-danger">
							<h1>Oops, 404!</h1>
							<h2>The page you are looking for could not be found.</h2>
							<p>
								Click <a href="<@spring.url '/'/>">here</a> to go to home page.</a>
							</p>
						</div>
					</div>
				</div>
				<!-- / .row -->
			</div>
    	</div>
	</div>
</section>
</@layout.default>



