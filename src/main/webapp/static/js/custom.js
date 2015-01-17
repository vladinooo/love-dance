// create a DOM element with unique id
// this id is Base64 encoded and is passed from controller
// the id is used for row deletions in database
function captureUniqueIdentifier(uniqueId) {
    if (!$(".uniqueId").length) {
        var div = $('<div/>');
        div.attr("class", "uniqueId");
        div.attr("hidden", "true");
        div.append(uniqueId);
        $("body").append(div);
        console.log("Unique id stored.");
    }
}

function adminEditUser(uniqueId) {
    var url = window.location.protocol + "//" + window.location.host + '/admin/user/edit';
    $.ajax({
        url : url,
        contentType: 'application/json; charset=utf-8',
        type: 'POST',
        dataType: 'json',
        data: JSON.stringify({"uniqueId":uniqueId}),
        complete: function (xhr, status) {
            if (status === 'error' || !xhr.responseText) {
                console.log("Ajax call failed " + status);
            }
        }
    });
    console.log("Admin user edit request.");
}

function deleteUser() {
    var url = window.location.protocol + "//" + window.location.host + '/admin/user/delete';
    $.ajax({
        url : url,
        contentType: 'application/json; charset=utf-8',
        type: 'POST',
        dataType: 'json',
        data: JSON.stringify({"uniqueId":$(".uniqueId").text()}),
        complete: function (xhr, status) {
            if (status === 'error' || !xhr.responseText) {
                console.log("Ajax call failed " + status);
            }
            $(".uniqueId").remove();
        }
    });
    console.log("Admin user delete request: " + url);
}


// collapsed menu doesn't close on click - fix
$( document ).ready(function() {
    $(document).click(function (event) {
        var clickover = $(event.target);
        var $navbar = $(".navbar-collapse");
        var _opened = $navbar.hasClass("in");
        if (_opened === true && !clickover.hasClass("navbar-toggle")) {
            $navbar.collapse('hide');
        }
    });
});

/***** ajax form submission and validation *****/
function collectFormData(fields) {
    var data = {};
    for (var i = 0; i < fields.length; i++) {
        var $item = $(fields[i]);
        data[$item.attr('name')] = $item.val();
    }
    return data;
}

function submitFormByAjax(formObj) {
    var validationUrl = window.location.protocol + "//" + window.location.host + formObj.validationPostUri;
    var formUrl = window.location.protocol + "//" + window.location.host + formObj.formPostUri;
    var formType = formObj.type;
    var form = formObj.$form;
    form.bind('submit', function (e) {

        var $inputs = form.find('input');
        var data = collectFormData($inputs);
        // do ajax validation
        $.post(validationUrl, data, function (response) {

            removeErrorHighlights(form, formType);

            if (response.status == 'FAIL') {
                var errorMessages = new Array();
                for (var i = 0; i < response.errorMessageList.length; i++) {
                    var item = response.errorMessageList[i];
                    var error = {
                        index: form.find('#' + item.fieldName).index(),
                        fieldName: form.find('#' + item.fieldName).attr('id'),
                        message: item.message
                    };
                    errorMessages.push(error);
                }

                errorMessages.sort(sortBy('index', false));
                highlightErrors(form, formType, errorMessages);

            } else {
                doAjaxSubmit(formUrl, formType, form);
            }
        }, 'json');

        e.preventDefault();
        return false;
    });
}

function highlightErrors(form, formType, errorMessages) {
    form.find('.response-summary').empty();
    for (var i = 0; i < errorMessages.length; i++) {
        var item = errorMessages[i];

        switch(formType) {
            case 'contact':
                form.find('#' + item.fieldName + ' .form-group').addClass('validation-error-contact');
                break;

            default:
                form.find('#' + item.fieldName).addClass('validation-error');
        }
    }
    showFormValidationErrorSummary(form, errorMessages);
}

function removeErrorHighlights(form, formType) {
    switch(formType) {
        case 'contact':
            form.find('.form-group').removeClass('validation-error-contact');
            break;

        default:
            form.find('.form-group').removeClass('validation-error');
    }
}

function doAjaxSubmit(formUrl, formType, form) {
    $.post(formUrl, form.serialize(), function(response) {
        if (response.status == 'FAIL') {
            console.log(response.status + ": " + response.message);
            showSubmitResponse(response.status, form, response.message);
        } else {
            onSubmitSuccessAction(formType, form, response.status, response.message);
        }
    }, 'json');
}

function showFormValidationErrorSummary(form, messages) {
    form.find('.response-summary').append('<ul></ul>');
    for (var i = 0; i < messages.length; i++) {
        var item = messages[i];
        form.find('.response-summary').append('<li>' + item.message + '</li>');
    }
    form.find('.response-summary').removeClass('alert-success');
    form.find('.response-summary').addClass('alert-danger');
    form.find('.response-summary').removeClass('hidden');
}

function onSubmitSuccessAction(formType, form, status, message) {
    switch(formType) {
        case 'password':
            showSubmitResponse(status, form, message);
            $('#currentPassword .form-control').val("");
            $('#newPassword .form-control').val("");
            $('#confirmNewPassword .form-control').val("");
            break;

        case 'contact':
            showSubmitResponse(status, form, message);
            $('#name .form-control').val("");
            $('#email .form-control').val("");
            $('#message .form-control').val("");
            $('#name .form-group').removeClass("floating-label-form-group-with-value");
            $('#email .form-group').removeClass("floating-label-form-group-with-value");
            $('#message .form-group').removeClass("floating-label-form-group-with-value");
            break;

        case 'forgotPassword':
            showSubmitResponse(status, form, message);
            $('#username .form-control').val("");
            var url = window.location.protocol + "//" + window.location.host + "/login";
            doRedirect(10000, url);
            break;

        case 'resetPassword':
            showSubmitResponse(status, form, message);
            $('#newPassword .form-control').val("");
            $('#confirmNewPassword .form-control').val("");
            var url = window.location.protocol + "//" + window.location.host + "/login";
            doRedirect(10000, url);
            break;

        case 'signup':
            $('#username .form-control').val("");
            $('#email .form-control').val("");
            $('#password .form-control').val("");
            $('#confirmPassword .form-control').val("");
            var url = window.location.protocol + "//" + window.location.host + "/signup/confirm";
            doRedirect(0, url);
            break;

        default:
            showSubmitResponse(status, form, message);
            break;
    }
}

function showSubmitResponse(status, form, message) {
    if (status == 'FAIL') {
        form.find('.response-summary').empty();
        form.find('.response-summary').append('<li>' + message + '</li>');
        form.find('.response-summary').removeClass('alert-success');
        form.find('.response-summary').addClass('alert-danger');
        form.find('.response-summary').removeClass('hidden');
    }
    if (status == 'SUCCESS') {
        form.find('.response-summary').empty();
        form.find('.response-summary').removeClass('alert-danger');
        form.find('.response-summary').addClass('alert-success');
        form.find('.response-summary').append('<p>' + message + '</p>');
        form.find('.response-summary').removeClass('hidden');
    }
}


function doRedirect(delay, url) {
    if (delay == 0) {
        window.location.href = url;
    } else {
        setTimeout(function(){
            window.location.href = url;
        }, delay);
    }
}


/**
 * @description
 * Returns a function which will sort an
 * array of objects by the given key.
 *
 * @param  {String}  key
 * @param  {Boolean} reverse
 * @return {Function}
 */
function sortBy(key, reverse) {

    var moveSmaller = reverse ? 1 : -1;

    var moveLarger = reverse ? -1 : 1;

    /**
     * @param  {*} a
     * @param  {*} b
     * @return {Number}
     */
    return function(a, b) {
        if (a[key] < b[key]) {
            return moveSmaller;
        }
        if (a[key] > b[key]) {
            return moveLarger;
        }
        return 0;
    };

}
