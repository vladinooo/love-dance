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
		
			<h2 class="page-header">Edit Profile</h2>
			
			<div class="col-sm-3">
				<img class="img-responsive center-block" src="${pageContext.request.contextPath}/static/images/profile-picture.jpg" alt="Profile Picture">
			</div>

			<div class="col-sm-9">
			
			
			<form:form modelAttribute="userEditForm" class="form-horizontal" role="form">
			
					<div class="form-group">
						<label class="control-label col-md-2" for="firstname">Firstname</label>
						<div class="col-md-6">
							<form:input path="firstname" class="form-control" placeholder="Firstname" />
							<form:errors cssClass="error" path="firstname" />
						</div>
					</div>
					
					<div class="form-group">
						<label class="control-label col-md-2" for="surname">Surname</label>
						<div class="col-md-6">
							<form:input path="surname" class="form-control" placeholder="Surname" />
							<form:errors cssClass="error" path="surname" />
						</div>
					</div>
				
					<div class="form-group">
						<div class="col-md-6 col-md-offset-2">
							<button type="submit" class="btn btn-default">Update</button>
						</div>
					</div>
            
        	</form:form>

			</div>
		</div>
	</div>
</div>