$(document).on('turbolinks:load', function() {
  const TIP_PERCENT = 0.10
  var tip, donation, total;
  $('#donationRadio1, #donationRadio2, #donationRadio3, #donationRadio4, #donationRadio5').click(function(){
    donation = Number($(this).val());
    donation = flipNegativeDonationValue(donation);

    tip = calculateTip(TIP_PERCENT, donation);
    $("#tipAmount").val(tip);
    tip = tip * 100;
    total = tip + donation;
    setHiddenFields(donation, tip, total)
  });

  $('#customDonationRadioInput').on('keyup', function(){
    $("#donationRadio6").prop("checked", true);
    donation = Number($('#customDonationRadioInput').val() * 100);
    donation = flipNegativeDonationValue(donation);

    tip = calculateTip(TIP_PERCENT, donation);
    $("#tipAmount").val(tip);
    tip = tip * 100
    total = tip + donation;
    setHiddenFields(donation, tip, total)
  });

  $("#donationRadio6").click(function(){
    donation = Number($('#customDonationRadioInput').val() * 100);
    donation = flipNegativeDonationValue(donation);

    $('#customDonationRadioInput').val(donation);
    tip = calculateTip(TIP_PERCENT, donation);
    $("#tipAmount").val(tip);
    tip = tip * 100
    total = tip + donation;
    setHiddenFields(donation, tip, total)
  });

  $('#tipAmount').on('keyup', function(){
    tip = Number($("#tipAmount").val());
    tip = flipNegativeTipValue(tip);
    $("#tipAmount").val(tip);
    tip = tip * 100;
    total = tip + donation;
    setHiddenFields(donation, tip, total)
  });

});

function flipNegativeTipValue(tip){
  if (tip < 0){
    tip = tip * -1;
  }
  return tip;
}

function flipNegativeDonationValue(donation){
  if (donation < 0) {
    donation = donation * -1;
  }
  return donation;
}

function calculateTip(tipPercent, donation) {
  return ((tipPercent*donation/100).toFixed(2));
}

function setHiddenFields(donation, tip, total) {
  $('input[type=hidden]#donationToCampaign').val(donation);
  $('input[type=hidden]#donationToTip').val(tip);
  $('input[type=hidden]#totalDonation').val(total);
}

