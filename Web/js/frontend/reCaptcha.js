
$('#sendCaptcha').submit(function(event) {
      // we stoped it
      event.preventDefault();
      var name = $('#sendName').val();
      var email = $("#sendMail").val();
      var message = $("#sendMessage").val();

      grecaptcha.ready(function() {
          grecaptcha.execute('6Lch8LoUAAAAAHCGeMKd-tRIBKUo_W72OvgpPJXJ', {action: 'send_mail'}).then(function(token) {

              $('#sendCaptcha').prepend('<input type="hidden" name="token" value="' + token + '">');
              $('#sendCaptcha').prepend('<input type="hidden" name="action" value="subscribe_newsletter">');

              setTimeout(function() {

                $('#sendCaptcha').unbind('submit').submit();

              }, 500); 

          });;
      });
});