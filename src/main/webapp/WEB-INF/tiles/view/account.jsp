<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="container portfolio-modal">
	<div class="row">
	
		<tiles:insertAttribute name="navigation"></tiles:insertAttribute>

		<div class="col-sm-9">
		
			<h2 class="page-header">Account</h2>
			
			
				<table class="table table-striped">
					<tbody>
						<tr>
							<td>Email:</td>
							<td><c:out value="${user.email}" /></td>
						</tr>
						<tr>
							<td>Password:</td>
							<td><c:out value="${user.password}" /></td>
						</tr>
					</tbody>
				</table>

                <button type="submit" class="btn btn-default pull-right" onclick="window.location.href='/user/account/edit'"> Edit </button>
                
		</div>
	</div>
</div>