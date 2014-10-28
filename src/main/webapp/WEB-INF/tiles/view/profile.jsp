<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container portfolio-modal">
	<div class="row">
	
		<tiles:insertAttribute name="navigation"></tiles:insertAttribute>

		<div class="col-sm-9">
		
			<h2 class="page-header">Profile</h2>
			
			
				<table class="table table-striped wrap-table">
					<tbody>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-3"><img class="profile-picture" src="${pageContext.request.contextPath}/static/images/profile-picture.jpg" alt="Profile Picture"></div>
									<div class="col-sm-9"></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Username:</div>
									<div class="col-sm-10"><c:out value="${user.username}" /></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Firstname:</div>
									<div class="col-sm-10"><c:out value="${user.firstname}" /></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Surname:</div>
									<div class="col-sm-10"><c:out value="${user.surname}" /></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Phone:</div>
									<div class="col-sm-10"><c:out value="${user.phone}" /></div>
								</div>
							</td>
						</tr>
						<tr>
							<td>
								<div class="row">
									<div class="col-sm-2">Biography:</div>
									<div class="col-sm-10"><c:out value="${user.biography}" /></div>
								</div>
							</td>
						</tr>
					</tbody>
				</table>

                <button type="submit" class="btn btn-default pull-right" onclick="window.location.href='/user/profile/edit'"> Edit </button>
                
		</div>
	</div>
</div>