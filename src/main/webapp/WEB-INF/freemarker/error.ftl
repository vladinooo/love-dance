<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<@layout.default "error">
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<div class="alert alert-danger errorPage">
							<h1><#if (heading)??>${heading}</#if></h1>
							<h3><#if (message)??>${message}</#if></h3>
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



