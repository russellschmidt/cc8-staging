$(document).on('turbolinks:load', function() {
  // Bootstrap tooltip enabling
  $('[data-toggle="tooltip"]').tooltip()

  changeTabContent()

  $('.tab-links').click(function() {
    $('.active').removeClass('active');
    $(this).addClass('active');
    changeTabContent();
  });

  $('#video-modal button.close').click(function() {
    stopVideoOnClose()
  });
})

function showActiveTabContent() {
  // show the active tab's content
  targetSection = $('.active').text();
  targetContentName = targetSection.toLowerCase();

  $("#"+targetContentName).css("display", "block");
}

function hideInactiveTabContent() {
  var i, tabcontent, tablinks;

  $tabcontent = $(".tab-content");
  for (i = 0; i < $tabcontent.length; i++) {
      $tabcontent[i].style.display = "none";
  }
}

function changeTabContent(){
  hideInactiveTabContent();
  showActiveTabContent();
}

function stopVideoOnClose() {
  const $video_link = $('#video-container iframe').attr("src");
  $('#video-container iframe').attr("src", "");
  console.log('close video');
  $('#video-container iframe').attr("src", $video_link);
}
