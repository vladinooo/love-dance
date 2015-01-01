<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Settings">
    <#include "common/navigation.ftl"/>
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <div class="col-sm-8">

                        <h2 class="page-header">Change My Details</h2>

                        <div class="well">

                            <@spring.bind "editAccountForm"/>
                            <form class="form-horizontal" role="form" method="POST" action="<@spring.url '/account/settings/edit-account-details'/>">
                                <div class="form-group">
                                    <label for="username" class="col-sm-3 control-label">Username:</label>
                                    <div class="col-sm-6">
                                        <p class="form-control-static"><#if account.username??>${account.username}</#if></p>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="email" class="col-sm-3 control-label">Email: <abbr
                                            class="input-validation-required"
                                            title="This information is required.">*</abbr></label>
                                    <div class="col-sm-6">
                                        <@spring.formInput "editAccountForm.Email", "class='form-control', placeholder='Email'" />
                                        <@spring.showErrors "<br />", "fieldValidationError" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="firstname" class="col-sm-3 control-label">First Name:</label>
                                    <div class="col-sm-6">
                                        <@spring.formInput "editAccountForm.firstname", "class='form-control', placeholder='First Name'" />
                                        <@spring.showErrors "<br />", "fieldValidationError" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="surname" class="col-sm-3 control-label">Surname:</label>
                                    <div class="col-sm-6">
                                        <@spring.formInput "editAccountForm.surname", "class='form-control', placeholder='Surname'" />
                                        <@spring.showErrors "<br />", "fieldValidationError" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="phone" class="col-sm-3 control-label">Phone:</label>
                                    <div class="col-sm-6">
                                        <@spring.formInput "editAccountForm.phone", "class='form-control', placeholder='Phone'" />
                                        <@spring.showErrors "<br />", "fieldValidationError" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="biography" class="col-sm-3 control-label">Biography:</label>
                                    <div class="col-sm-6">
                                        <@spring.formTextarea "editAccountForm.biography", "class='form-control', placeholder='Biography', rows='3'" />
                                        <@spring.showErrors "<br />", "fieldValidationError" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-6">
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </div>
                            </form>

                        </div>

                        <h2 class="page-header">Change My Password</h2>

                        <div class="well">

                            <@spring.bind "editPasswordForm"/>
                            <form class="form-horizontal" role="form" method="POST">
                                <div class="form-group">
                                    <label for="currentPassword" class="col-sm-3 control-label">Current Password <abbr
                                            class="input-validation-required"
                                            title="This information is required.">*</abbr></label>
                                    <div class="col-sm-6">
                                        <@spring.formPasswordInput "editPasswordForm.password", "class='form-control', placeholder='Current Password'" />
                                        <@spring.showErrors "<br />", "fieldValidationError" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="newPassword" class="col-sm-3 control-label">New Password <abbr
                                            class="input-validation-required"
                                            title="This information is required.">*</abbr></label>
                                    <div class="col-sm-6">
                                        <@spring.formPasswordInput "editPasswordForm.newPassword", "class='form-control', placeholder='New Password'" />
                                        <@spring.showErrors "<br />", "fieldValidationError" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="confirmNewPassword" class="col-sm-3 control-label">Confirm New Password <abbr
                                            class="input-validation-required"
                                            title="This information is required.">*</abbr></label>
                                    <div class="col-sm-6">
                                        <@spring.formPasswordInput "editPasswordForm.confirmNewPassword", "class='form-control', placeholder='Confirm New Password'" />
                                        <@spring.showErrors "<br />", "fieldValidationError" />
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-3 col-sm-6">
                                        <button type="submit" class="btn btn-primary">Update</button>
                                    </div>
                                </div>
                            </form>

                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</@layout.default>