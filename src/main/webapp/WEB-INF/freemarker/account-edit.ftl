<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Edit Account">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container portfolio-modal">
				<div class="row">
				
					<#include "common/navigation.ftl"/>
			
					<div class="col-sm-9">
					
						<h2 class="page-header">Edit Account</h2>
						
						<@spring.bind "accountEditForm"/>
						<form class="form-horizontal" role="form" method="POST">
							
							<table class="table table-striped wrap-table">
								<tbody>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Email:</div>
												<div class="col-sm-5"><@spring.formInput "accountEditForm.Email", "class='form-control', placeholder='Email'" /></div>
												<div class="col-sm-5"><@spring.showErrors "<br />", "fieldValidationError" /></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Password:</div>
												<div class="col-sm-5"><@spring.formInput "accountEditForm.password", "class='form-control', placeholder='Password'" /></div>
												<div class="col-sm-5"><@spring.showErrors "<br />", "fieldValidationError" /></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Re-type Password:</div>
												<div class="col-sm-5"><@spring.formInput "accountEditForm.retypePassword", "class='form-control', placeholder='Re-type Password'" /></div>
												<div class="col-sm-5"><@spring.showErrors "<br />", "fieldValidationError" /></div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							
							<button type="submit" class="btn btn-default pull-right">Update</button>
			
			        	</form>
							
					</div>
				</div>
			</div>
    	</div>
	</div>
</section>
</@layout.default>