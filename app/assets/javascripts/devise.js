//= require jQuery-2.1.4.min
//= require bootstrap.min
//= require iCheck/icheck.min
//= require_self
$(function () {
  $('input').iCheck({
    checkboxClass: 'icheckbox_square-blue',
    radioClass: 'iradio_square-blue',
    increaseArea: '20%' // optional
  });
});
