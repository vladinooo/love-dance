<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Edit profile">  
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container portfolio-modal">
				<div class="row">
				
					<#include "common/navigation.ftl"/>
			
					<div class="col-sm-9">
					
						<h2 class="page-header">Edit Profile</h2>
						
						<@spring.bind "profileEditForm"/>
						<form id="profile-edit-form" class="form-horizontal" role="form" method="POST">
						
							<table class="table table-striped wrap-table">
								<tbody>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2"><img class="profile-picture" src="/static/images/profile-picture.jpg" alt="Profile Picture"></div>
												<div class="col-sm-10"></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Username:</div>
												<div class="col-sm-10"><@sec.authentication property="principal.user.username" /></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Firstname:</div>
												<div class="col-sm-5"><@spring.formInput "profileEditForm.firstname", "class='form-control', placeholder='Firstname'" /></div>
												<div class="col-sm-5"><@spring.showErrors "<br />", "fieldValidationError" /></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Surname:</div>
												<div class="col-sm-5"><@spring.formInput "profileEditForm.surname", "class='form-control', placeholder='Surname'" /></div>
												<div class="col-sm-5"><@spring.showErrors "<br />", "fieldValidationError" /></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Phone:</div>
												<div class="col-sm-5"><@spring.formInput "profileEditForm.phone", "class='form-control', placeholder='Phone'" /></div>
												<div class="col-sm-5"><@spring.showErrors "<br />", "fieldValidationError" /></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Biography:</div>
												<div class="col-sm-5"><@spring.formTextarea "profileEditForm.biography", "class='form-control', placeholder='Biography', rows='5'" /></div>
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