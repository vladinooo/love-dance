<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Upload Photo">
<#include "common/navigation.ftl"/>
<section class="portfolio-1 bg-lighter">
	<div class="container">
    	<div class="row">
			<div class="container portfolio-modal">
				<div class="row">
			
					<div class="col-sm-9">
					
						<h2 class="page-header">Upload Photo</h2>
						
						<form id="photo-upload-form" class="form-horizontal" role="form"
							action="${rc.contextPath}/uploadProfilePhoto" method="POST" enctype="multipart/form-data">
						
						
							<#if (flashMessage)??>
								<div class="alert alert-${flashKind} alert-dismissable">
									<button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
									${flashMessage}
								</div>
							</#if>
						
							<table class="table table-striped wrap-table">
								<tbody>
									<tr>
										<td>
											<div class="row">
												<div class="col-sm-12 centered"><img class="profile-picture" src="${rc.contextPath}/static/images/profile-picture.jpg" alt="Profile Picture"></div>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<div class="row">
												<span id="pp-upload" class="btn btn-default btn-file">
													Browse... <input type="file" name="file">
												</span>
												<span class="pp-filename"></span>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
							

							<button type="submit" class="btn btn-default pull-right">Upload</button>
			
			        	</form>
							
					</div>
				</div>
			</div>
    	</div>
	</div>
</section>
</@layout.default>

<script>
// customise file chooser button and show file path
$(document).on('change', '.btn-file :file', function() {
    var input = $(this),
        numFiles = input.get(0).files ? input.get(0).files.length : 1,
        label = input.val().replace(/\\/g, '/').replace(/.*\//, '');
    input.trigger('fileselect', [numFiles, label]);
});

$(document).ready( function() {
    $('.btn-file :file').on('fileselect', function(event, numFiles, label) {
        console.log(numFiles);
        console.log(label);
        $(".pp-filename").text(label);
    });
});

</script>