/*
 *  Document   : readyRegister.js
 *  Author     : pixelcave
 *  Description: Custom javascript code used in Register page
 */

var ReadyRegister = function() {

    return {
        init: function() {
            /*
             *  Jquery Validation, Check out more examples and documentation at https://github.com/jzaefferer/jquery-validation
             */

            /* Register form - Initialize Validation */
            $('#form-register').validate({
                errorClass: 'help-block animation-slideUp', // You can change the animation class for a different entrance animation - check animations page
                errorElement: 'div',
                errorPlacement: function(error, e) {
                    e.parents('.form-group > div').append(error);
                },
                highlight: function(e) {
                    $(e).closest('.form-group').removeClass('has-success has-error').addClass('has-error');
                    $(e).closest('.help-block').remove();
                },
                success: function(e) {
                    if (e.closest('.form-group').find('.help-block').length === 2) {
                        e.closest('.help-block').remove();
                    } else {
                        e.closest('.form-group').removeClass('has-success has-error');
                        e.closest('.help-block').remove();
                    }
                },
                rules: {
                    'register-username': {
                        required: true,
                        minlength: 3
                    },
                    'register-email': {
                        required: true,
                        email: true
                    },
                    'register-password': {
                        required: true,
                        minlength: 6,
                        maxlength: 16
                    },
                    'register-password-verify': {
                        required: true,
                        equalTo: '#register-password'
                    },
                    'register-terms': {
                        required: true
                    }
                },
                messages: {
                    'register-username': {
                        required: 'Please enter a username',
                        minlength: 'Please enter a username'
                    },
                    'register-email': 'Please enter a valid email address',
                    'register-password': {
                        required: '请输入密码！',
                        minlength: '您的密码长度小于6位！',
                        maxlength: '您的密码长度大于16位！'
                    },
                    'register-password-verify': {
                        required: 'Please provide a password',
                        minlength: '你的密码必须至少6个字符长！',
                        equalTo: '两次输入密码不一致！'
                    },
                    'register-terms': {
                        required: 'Please accept the terms!'
                    }
                }
            });
        }
    };
}();