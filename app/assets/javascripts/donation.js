$(document).on('turbolinks:load', function() {
  const TIP_PERCENT = 0.10
  var tip, donation, total;
  $('#donationRadio1, #donationRadio2, #donationRadio3, #donationRadio4, #donationRadio5').click(function(){
    donation = Number($(this).val());
    donation = flipNegativeDonationValue(donation);
    $('#customDonationRadioInput').val()
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
    $('#customDonationRadioInput').val()
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
    tip = $("#tipAmount").val();
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

function setCustomDonation(tip, tip_percent, donation){
  donation = $('#customDonationRadioInput').val() * 100;
  tip = calculateTip(tip_percent, donation);
  $("#tipAmount").val(tip);
}

function calculateTip(tipPercent, donation) {
  return ((tipPercent*donation/100).toFixed(2));
}

function calculateTotals(tip, donation) {

}

function setHiddenFields(donation, tip, total) {
  $('input[type=hidden]#donationToCampaign').val(donation);
  $('input[type=hidden]#donationtoTip').val(tip);
  $('input[type=hidden]#totalDonation').val(total);
}

