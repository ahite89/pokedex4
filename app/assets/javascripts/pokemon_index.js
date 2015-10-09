$(document).ready(function() {
  $('#sprite img').hover(
    function(){
        $(this).addClass('bigger');
    },
    function(){
        $(this).removeClass('bigger')
  });
});
