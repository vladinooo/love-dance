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
                            <form id="edit-account-details-form" class="form-horizontal" role="form" method="POST"
                                  action="<@spring.url '/account/settings/edit-account-details'/>">
                                <div class="form-group">
                                    <label for="username" class="col-sm-3 control-label">Username:</label>
                                    <div class="col-sm-6">
                                        <p class="form-control-static"><#if account.username??>${account.username}</#if></p>
                                    </div>
                                </div>
                                <div id="email" class="form-group">
                                    <label for="email" class="col-sm-3 control-label">Email: <abbr
                                            class="input-validation-required"
                                            title="This information is required.">*</abbr></label>
                                    <div class="col-sm-6">
                                        <@spring.formInput "editAccountForm.Email", "class='form-control', placeholder='Email'" />
                                        <span class="help-inline"><@spring.showErrors "<br />", "fieldValidationError" /></span>
                                    </div>
                                </div>
                                <div id="firstname" class="form-group">
                                    <label for="firstname" class="col-sm-3 control-label">First Name:</label>
                                    <div class="col-sm-6">
                                        <@spring.formInput "editAccountForm.firstname", "class='form-control', placeholder='First Name'" />
                                        <span class="help-inline"><@spring.showErrors "<br />", "fieldValidationError" /></span>
                                    </div>
                                </div>
                                <div id="surname" class="form-group">
                                    <label for="surname" class="col-sm-3 control-label">Surname:</label>
                                    <div class="col-sm-6">
                                        <@spring.formInput "editAccountForm.surname", "class='form-control', placeholder='Surname'" />
                                        <span class="help-inline"><@spring.showErrors "<br />", "fieldValidationError" /></span>
                                    </div>
                                </div>
                                <div id="phone" class="form-group">
                                    <label for="phone" class="col-sm-3 control-label">Phone:</label>
                                    <div class="col-sm-6">
                                        <@spring.formInput "editAccountForm.phone", "class='form-control', placeholder='Phone'" />
                                        <span class="help-inline"><@spring.showErrors "<br />", "fieldValidationError" /></span>
                                    </div>
                                </div>
                                <div id="biography" class="form-group">
                                    <label for="biography" class="col-sm-3 control-label">Biography:</label>
                                    <div class="col-sm-6">
                                        <@spring.formTextarea "editAccountForm.biography", "class='form-control', placeholder='Biography', rows='3'" />
                                        <span class="help-inline"><@spring.showErrors "<br />", "fieldValidationError" /></span>
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
                            <form id="edit-account-password-form" class="form-horizontal" role="form" method="POST"
                                  action="<@spring.url '/account/settings/edit-account-password'/>">
                                <div id="password" class="form-group">
                                    <label for="currentPassword" class="col-sm-3 control-label">Current Password <abbr
                                            class="input-validation-required"
                                            title="This information is required.">*</abbr></label>
                                    <div class="col-sm-6">
                                        <@spring.formPasswordInput "editPasswordForm.password", "class='form-control', placeholder='Current Password'" />
                                        <span class="help-inline"><@spring.showErrors "<br />", "fieldValidationError" /></span>
                                    </div>
                                </div>
                                <div id="newPassword" class="form-group">
                                    <label for="newPassword" class="col-sm-3 control-label">New Password <abbr
                                            class="input-validation-required"
                                            title="This information is required.">*</abbr></label>
                                    <div class="col-sm-6">
                                        <@spring.formPasswordInput "editPasswordForm.newPassword", "class='form-control', placeholder='New Password'" />
                                        <span class="help-inline"><@spring.showErrors "<br />", "fieldValidationError" /></span>
                                    </div>
                                </div>
                                <div id="confirmNewPassword" class="form-group">
                                    <label for="confirmNewPassword" class="col-sm-3 control-label">Confirm New Password <abbr
                                            class="input-validation-required"
                                            title="This information is required.">*</abbr></label>
                                    <div class="col-sm-6">
                                        <@spring.formPasswordInput "editPasswordForm.confirmNewPassword", "class='form-control', placeholder='Confirm New Password'" />
                                        <span class="help-inline"><@spring.showErrors "<br />", "fieldValidationError" /></span>
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

<script>
    $(document).ready(function () {
        var editAccountDetailsForm = {
            $form: $('#edit-account-details-form'),
            validationPostUri: "/account/settings/edit-account-details.json",
            formPostUri: "/account/settings/edit-account-details",
            type: "basic"
        };
        var editAccountPasswordForm = {
            $form: $('#edit-account-password-form'),
            validationPostUri: "/account/settings/edit-account-password.json",
            formPostUri: "/account/settings/edit-account-password",
            type: "password"
        };
        showValidationErrors(editAccountDetailsForm);
        showValidationErrors(editAccountPasswordForm);
    });
</script>

</@layout.default>