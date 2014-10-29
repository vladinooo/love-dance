<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Account">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container portfolio-modal">
				<div class="row">
				
					<#include "common/navigation.ftl"/>
			
					<div class="col-sm-9">
					
						<h2 class="page-header">Account</h2>
							
							<table class="table table-striped wrap-table">
								<tbody>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Email:</div>
												<div class="col-sm-10"><#if user.email??>${user.email}</#if></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Password:</div>
												<div class="col-sm-10">**********</div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
			
			                <button type="submit" class="btn btn-default pull-right" onclick="window.location.href='/user/account/edit'"> Edit </button>
			                
					</div>
				</div>
			</div>
    	</div>
	</div>
</section>
</@layout.default>