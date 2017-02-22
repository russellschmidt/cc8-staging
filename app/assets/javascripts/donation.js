$(document).on('turbolinks:load', function() {
  const TIP_PERCENT = 0.10
  var tip, donation;
  $('#donationRadio1, #donationRadio2, #donationRadio3, #donationRadio4, #donationRadio5').click(function(){
    donation = $(this).val();
    tip = calculateTip(TIP_PERCENT, donation);
    $("#tipAmount").val(tip);
  });

  $('#customDonationRadioInput').on('keyup', function(){
    $("#donationRadio6").prop("checked", true);
    donation = $('#customDonationRadioInput').val() * 100;
    tip = calculateTip(TIP_PERCENT, donation);;
    $("#tipAmount").val(tip);
  });

  $("#donationRadio6").click(function(){
    donation = $('#customDonationRadioInput').val() * 100;
    tip = calculateTip(TIP_PERCENT, donation);
    $("#tipAmount").val(tip);
  });

});

function calculateTip(tipPercent, donation) {
  return (Math.round(tipPercent * donation)/100).toFixed(2);
}

