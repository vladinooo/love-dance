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
        form.find('.form-group').removeClass('validation-error');
        if (formType == 'contact') form.find('.form-group').removeClass('validation-error-contact');
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
                showErrors(form, formType, errorMessages);
            } else {
                doAjaxPost(formUrl, formType, form);
            }
        }, 'json');

        e.preventDefault();
        return false;
    });
}

function showErrors(form, formType, errorMessages) {
    form.find('.response-summary').empty();
    for (var i = 0; i < errorMessages.length; i++) {
        var item = errorMessages[i];
        form.find('#' + item.fieldName).addClass('validation-error');
        if (formType == 'contact') form.find('#' + item.fieldName + ' .form-group').addClass('validation-error-contact');
        form.find('.response-summary').append('<ul><li>' + item.message + '</li></ul>');
    }
    form.find('.response-summary').removeClass('alert-success');
    form.find('.response-summary').addClass('alert-danger');
    form.find('.response-summary').removeClass('hidden');
}

function doAjaxPost(formUrl, formType, form) {
    $.post(formUrl, form.serialize(), function(response) {
        if (response.status == 'FAIL') {
        } else {

            form.find('.response-summary').empty();
            form.find('.response-summary').append('<p>' + response.message + '</p>');
            form.find('.response-summary').removeClass('alert-danger');
            form.find('.response-summary').addClass('alert-success');
            form.find('.response-summary').removeClass('hidden');
        }
        if (formType == 'password') {
            $('#currentPassword .form-control').val("");
            $('#newPassword .form-control').val("");
            $('#confirmNewPassword .form-control').val("");
        }
        if (formType == 'contact') {
            $('#name .form-control').val("");
            $('#email .form-control').val("");
            $('#message .form-control').val("");
            $('#name .form-group').removeClass("floating-label-form-group-with-value");
            $('#email .form-group').removeClass("floating-label-form-group-with-value");
            $('#message .form-group').removeClass("floating-label-form-group-with-value");
        }
    }, 'json');
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
