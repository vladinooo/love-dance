<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container portfolio-modal">
	<div class="row">
	
		<div class="col-sm-3">
			<h2 class="page-header">Pages</h2>
                <div class="list-group">
                    <a href="#" class="list-group-item active">Profile</a>
                    <a href="#" class="list-group-item">Gallery</a>
                </div>
		</div>

		<div class="col-sm-9">
		
			<h2 class="page-header">Profile</h2>
			
			
				<table class="table table-striped">
					<tbody>
						<tr>
							<td colspan="2">
								<img class="profile-picture" src="${pageContext.request.contextPath}/static/images/profile-picture.jpg" alt="Profile Picture">
							</td>
						</tr>
						<tr>
							<td width="150px">User:</td>
							<td>vladh</td>
						</tr>
						<tr>
							<td>Firstname:</td>
							<td><c:out value="${user.firstname}" /></td>
						</tr>
						<tr>
							<td>Surname:</td>
							<td><c:out value="${user.surname}" /></td>
						</tr>
						<tr>
							<td>Email:</td>
							<td><c:out value="${user.email}" /></td>
						</tr>
						<tr>
							<td>Phone:</td>
							<td><c:out value="${user.phone}" /></td>
						</tr>
					</tbody>
				</table>

                <button type="submit" class="btn btn-default pull-right" onclick="window.location.href='/users/${user.id}/edit'"> Edit </button>
                
		</div>
	</div>
</div>