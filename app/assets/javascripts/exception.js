$(document).on('turbolinks:load', function() {


  // $('div.exception-page').addClass('bg-1');
  const bgClassArray = [
    'bg-1', 'bg-2', 'bg-3', 'bg-4', 'bg-5', 'bg-6', 'bg-7', 'bg-8', 'bg-9', 'bg-10'
  ];

  // //remove old classes
  bgClassArray.forEach(function(bgClass){
    $('div.exception-page').removeClass(bgClass);
  });

  // //add in new random class
  $('div.exception-page').addClass(returnRandomArrayElement(bgClassArray));
})

function returnRandomArrayElement(arr) {
  const len = arr.length;
  const index = Math.floor(Math.random()*len);
  return arr[index];
}
