$(document).on('turbolinks:load', function() {
  // window.onbeforeunload = null;

  $("#kit-submit").click(function() {
    var email = $("#kit-email").val();
    if (email) {

      $("#newsletter_iframe").load(function() {
        $("#newsletter_iframe").contents().find("input[type=email]").val(email);
      })
    }

  });
})
