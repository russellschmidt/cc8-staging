$(document).on('turbolinks:load', function() {

  changeTabContent()

  $('.tab-links').click(function() {
    $('.active').removeClass('active');
    $(this).addClass('active');
    changeTabContent();
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
