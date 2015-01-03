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

// ajax form submission and validation
function collectFormData(fields) {
    var data = {};
    for (var i = 0; i < fields.length; i++) {
        var $item = $(fields[i]);
        data[$item.attr('name')] = $item.val();
    }
    return data;
}

function showValidationErrors(form, postUri) {
    var url = window.location.protocol + "//" + window.location.host + postUri;
    var $form = form;
    $form.bind('submit', function (e) {

        var $inputs = $form.find('input');
        var data = collectFormData($inputs);

        $.post(url, data, function (response) {
            $form.find('.form-group').removeClass('error');
            $form.find('.help-inline').empty();

            if (response.status == 'FAIL') {
                for (var i = 0; i < response.errorMessageList.length; i++) {
                    var item = response.errorMessageList[i];
                    var $formGroup = $('#' + item.fieldName);
                    $formGroup.addClass('error');
                    $formGroup.find('.help-inline').html(item.message);
                }
            } else {
                $form.unbind('submit');
                $form.submit();
            }
        }, 'json');

        e.preventDefault();
        return false;
    });
}
