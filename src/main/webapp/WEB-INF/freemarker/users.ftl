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
                                    <td class="centered">${user.username}</td>
                                    <td class="centered">${user.email}</td>
                                    <td class="centered">${user.datetimeRegistered}</td>
                                    <td class="centered" style="text-transform: lowercase">
                                        <#list user.roles as role>
                                            <span class="fl">${role}</span>
                                        </#list>
                                    </td>
                                    <td class="centered"><#if user.enabled == true>Active<#else>Terminated</#if></td>
                                    <td class="centered">
                                        <div class="btn-group">
                                            <a href="#"
                                               class="btn btn-default" data-original-title="View user"
                                               onclick="captureUniqueIdentifier('${user.encodedId}')">
                                               <i class="fa fa-eye"></i></a>
                                            <a href="#"
                                               class="btn btn-default" data-original-title="Edit user"
                                               onclick="adminEditUser('${user.encodedId}')">
                                               <i class="fa fa-edit"></i></a>
                                            <a href="#"
                                               class="btn btn-default" data-toggle="modal" data-target="#myModal"
                                               data-original-title="Delete user"
                                               onclick="captureUniqueIdentifier('${user.encodedId}')"><i class="fa fa-trash"></i></a>
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



<!-- Delete user modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="myModalLabel">DELETE USER</h4>
            </div>
            <div class="modal-body centered" style="font-size: large">
                This action will delete all user's data. <br />Are you sure?
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" data-dismiss="modal" onclick="deleteUser()">DELETE</button>
            </div>
        </div>
    </div>
</div>

</@layout.default>

