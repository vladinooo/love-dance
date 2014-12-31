<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Profile">
<#include "common/navigation.ftl"/>
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container portfolio-modal">
				<div class="row">
			
					<div class="col-sm-9">
					
						<h2 class="page-header">Profile</h2>
						
						
							<table class="table table-striped wrap-table">
								<tbody>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-3"><img class="profile-photo-thumbnail" src="${rc.contextPath}/static/images/profile-picture.jpg" alt="Profile Picture"></div>
												<div class="col-sm-9"></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Username:</div>
												<div class="col-sm-10"><#if user.username??>${user.username}</#if></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Firstname:</div>
												<div class="col-sm-10"><#if user.profile.firstname??>${user.profile.firstname}</#if></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Surname:</div>
												<div class="col-sm-10"><#if user.profile.surname??>${user.profile.surname}</#if></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Phone:</div>
												<div class="col-sm-10"><#if user.profile.phone??>${user.profile.phone}</#if></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-2">Biography:</div>
												<div class="col-sm-10"><#if user.profile.biography??>${user.profile.biography}</#if></div>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
			
			                <button type="submit" class="btn btn-default pull-right" onclick="window.location.href='${rc.contextPath}/user/profile/edit'"> Edit </button>
			                
					</div>
				</div>
			</div>
    	</div>
	</div>
</section>
</@layout.default>