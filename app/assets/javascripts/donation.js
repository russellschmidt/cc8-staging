const TIP_PERCENT = 0.10;
var tip, donation, total;
donation = 2500;

$(document).on("wheel", "input[type=number]", function (e) {
    $(this).blur();
});

$(document).on('turbolinks:load', function() {
  setInterval(function(){
    // min charge is $1.00
    if( $('input[type=hidden]#totalDonation').val() < 100 ){
      $('#btn-buy').prop('disabled', true);
    } else {
      $('#btn-buy').prop('disabled', false);
    }
  }, 100);

  $('.donation-button').click(function(){
    $('.donation-button').css({"background-color": "rgba(17, 66, 71, 0)", "color": "#FFFFFF"});
    $('.donation-button input').css({"background-color": "rgba(17, 66, 71, 0)", "color": "#FFFFFF"});

    if ( $(this).children('#customDonationInput').length > 0 ){
      $(this).css({"background-color": "rgba(17, 66, 71, 0)", "color": "#FFFFFF"});
      $(this).children('#customDonationInput').css({"background-color": "#fff", "color": "rgba(17, 66, 71, 1)"});
    } else {
      $(this).css({"background-color": "#fff", "color": "rgba(17, 66, 71, 1)"});
    }

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
    total = Number(tip) + Number(donation);
    setHiddenFields(donation, tip, total);
  });

  $('#tip-amount').on('keyup mouseup', function(){
    tip = validateInput( Number($("#tip-amount").val()) * 100 );
    total = Number(tip) + Number(donation);
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
  $('input[type=hidden]#donationToCampaign').val(Math.floor(Number(donation)));
  $('input[type=hidden]#donationToTip').val(Math.floor(Number(tip)));
  $('input[type=hidden]#totalDonation').val(Math.floor(total));
}
