<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Edit Account">
<#include "common/navigation.ftl"/>
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container portfolio-modal">
				<div class="row">
			
					<div class="col-sm-9">
					
						<h2 class="page-header">Edit Account</h2>
						
						<@spring.bind "userEditForm"/>
						<form class="form-horizontal" role="form" method="POST">
							
							<table class="table table-striped wrap-table">
								<tbody>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Email:</div>
												<div class="col-sm-5"><@spring.formInput "userEditForm.Email", "class='form-control', placeholder='Email'" /></div>
												<div class="col-sm-5"><@spring.showErrors "<br />", "fieldValidationError" /></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Password:</div>
												<div class="col-sm-5"><@spring.formInput "userEditForm.password", "class='form-control', placeholder='Password'" /></div>
												<div class="col-sm-5"><@spring.showErrors "<br />", "fieldValidationError" /></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Re-type Password:</div>
												<div class="col-sm-5"><@spring.formInput "userEditForm.retypePassword", "class='form-control', placeholder='Re-type Password'" /></div>
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