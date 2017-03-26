const TIP_PERCENT = 0.15;
var tip, donation, total;
donation = 2500;

$(document).on('turbolinks:load', function() {
  setInterval(function(){
    if( ($("#customDonationInput").val() == 0) && ($("#tip-amount").val() == 0) ){
      $('#btn-buy').prop('disabled', true);
    } else {
      $('#btn-buy').prop('disabled', false);
    }
  }, 100);

  $('.donation-button').click(function(){
    $('.donation-button').css({"background-color": "rgba(17, 66, 71, 0)", "color": "#FFFFFF"});
    $(this).css({"background-color": "#fff", "color": "rgba(17, 66, 71, 1)"});
      // set donation
    donation = validateInput( Number($(this).val()) );
      // set tip
    tip = setTip(donation);
      // set total
    total = Number(donation) + Number(tip);
    setHiddenFields(donation, tip, total);
  });

  $('#backer-modal #customDonationInput').click(function(){
    $(this).css({"color": "rgba(17, 66, 71, 1)"});
  })

  $('#customDonationInput').on('keyup mouseup', function(){
    donation = validateInput(Number($('#customDonationInput').val() * 100));

    tip = calculateTip(TIP_PERCENT, donation);
    $('#tip-amount').val(Number(tip/100).toFixed(2));
    tip = tip * 100;
    total = tip + donation;
    setHiddenFields(donation, tip, total);
  });

  $('#tip-amount').on('keyup mouseup', function(){
    tip = validateInput( Number($("#tip-amount").val()) );
    $("#tip-amount").val(tip);
    tip = tip * 100;
    total = tip + donation;
    setHiddenFields(donation, tip, total);
  });
});


function calculateTip(tipPercent, donation) {
  return ((tipPercent*donation).toFixed(2));
}

function setTip(donation) {
  const tip = calculateTip(TIP_PERCENT, donation);
  $('#tip-amount').val(Number(tip/100).toFixed(2));
  return tip;
}

function togglePaymentButton() {
  const MIN_DONATION = 1;
  var donation = $('input[type=hidden]#donationToCampaign').val(donation);
  var tip = $('input[type=hidden]#donationToTip').val(tip);
  var total = $('input[type=hidden]#totalDonation').val(total);
}

function validateInput(num) {
  if (isNaN(num)) {
    return 0;
  } else if (num < 0) {
    return num * -1;
  } else {
    return num;
  }
}

function setHiddenFields(donation, tip, total) {
  $('input[type=hidden]#donationToCampaign').val(donation);
  $('input[type=hidden]#donationToTip').val(tip);
  $('input[type=hidden]#totalDonation').val(total);
}

