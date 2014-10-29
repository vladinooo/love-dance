<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "Error">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="alert alert-danger">
							<p>
								There was an unexpected error (type=${error}, status=${status})
							</p>
							<p>
								Click <a href="<@spring.url '/'/>">here</a> to go to home page</a>
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



