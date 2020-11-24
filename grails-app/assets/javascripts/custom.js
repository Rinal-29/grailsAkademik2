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
            }
        },
        highlight: function (element) {
            $(element).closest('.control-group').removeClass('success').addClass('error');
        },
        success: function (element) {
            element.text('ok').addClass('valid')
                .closest('.control-group').removeClass('error').addClass('success');
        }
    });

});
