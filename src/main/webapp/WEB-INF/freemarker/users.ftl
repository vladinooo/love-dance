<#import "common/default.ftl" as layout>
<#import "/spring.ftl" as spring />
<#assign sec=JspTaglibs["http://www.springframework.org/security/tags"] />
<@layout.default "Users">
<section class="portfolio-1 bg-lighter">
    <div class="container">
        <div class="row">
            <div class="container portfolio-modal">
                <div class="row">

                    <#include "common/navigation.ftl"/>

                    <div class="col-sm-9">

                        <h2 class="page-header">Users</h2>


                        <table cellpadding="0" cellspacing="0" border="0" class="table table-bordered table-hover" id="dataTable">
                            <thead>
                            <tr>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Registered</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </thead>
                            <tbody>
                            <#list users as user>
                                <tr>
                                    <td class="center">${user.username}</td>
                                    <td class="center">${user.email}</td>
                                    <td class="center">${user.datetimeRegistered}</td>
                                    <td class="center">
                                        <#list user.roles as role>
                                            role
                                        </#list>
                                    </td>
                                    <td class="center"><#if user.enabled == true>Active<#else>Terminated</#if></td>
                                    <td class="center ">
                                        <div class="btn-group">
                                            <a href="#" class="btn btn-success tip" title="" data-original-title="View user"><i class="icon16 i-eye-3"></i></a>
                                            <a href="#"
                                               class="btn btn-info tip" title="" data-original-title="Edit user"><i class="icon16 i-pencil"></i></a>
                                            <a href="#"
                                               class="btn btn-danger tip openModalDialog" title="" data-original-title="Delete user"><i class="icon16 i-remove-4"></i></a>

                                            <span class="deleteUserUrlPlaceholder" hidden="hidden">
                                                <@spring.url '/'/>
										    </span>
                                            <div title="DELETE USER" class="dialog">
                                                <p>This action will delete all user's data. Are you sure?</p>
                                            </div>
                                        </div>
                                    </td>
                                </tr>
                            </#list>
                            </tbody>
                            <tfoot>
                            <tr>
                                <th>Username</th>
                                <th>Email</th>
                                <th>Registered</th>
                                <th>Role</th>
                                <th>Status</th>
                                <th>Actions</th>
                            </tr>
                            </tfoot>
                        </table>


                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
</@layout.default>


<script>

    //create unique ids
    $(".openModalDialog").each(function(i){
        $(this).attr("id", "openModal" + i);
    });

    // create unique ids
    $(".dialog").each(function(i){
        $(this).attr("id", "modal" + i);
    });

    // create unique ids
    $(".deleteUserUrlPlaceholder").each(function(i){
        $(this).attr("id", "deleteUserUrl" + i);
    });


    $(".openModalDialog").each(function(i){
        var openModalId = $(this).attr("id");
        $("#" + openModalId).click(function(){
            $('#modal' + i).dialog('open');
            return false;
        });

        // JQuery UI Modal Dialog
        $('#modal' + i).dialog({
            autoOpen: false,
            modal: true,
            dialogClass: 'dialog modalDialogWarning',
            buttons: [
                {
                    text: "Delete",
                    "class": "btn btn-danger",
                    click: function() {
                        var url = $("#deleteUserUrl" + i).text();
                        window.location = url;
                        $(this).dialog("close");
                    }
                },
                {
                    text: "Cancel",
                    click: function() {
                        $(this).dialog("close");
                    }
                }
            ]
        });

    });


    $("div.dialog button").addClass("btn");

</script>
