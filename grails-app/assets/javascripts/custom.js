$(document).ready(function () {

    $('#form').validate({
        rules: {
            nim:  {
                minlength: 10,
                required: true
            },
            nama: {
                minlength: 2,
                required: true
            },
            noTelp: {
                minlength: 11,
                required: true
            },
            nip: {
                minlength: 5,
                required: true
            },
            username: {
                minlength: 3,
                required: true
            },
            password: {
                minlength: 5,
                required: true
            },
            email: {
                email: true,
                required: true
            }
        },
        highlight: function (element) {
            $(element).removeClass('success').addClass('error');
        },
        success: function (element) {
            element.addClass('valid').removeClass('error').addClass('success');
        }
    });

});
