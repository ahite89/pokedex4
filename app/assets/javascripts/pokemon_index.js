$(document).ready(function() {
  $('#sprite img').mouseenter(function(){
      $('#sprite').append("<div id='hoveringTooltip' style='position:fixed;'></div>");
      $('#hoveringTooltip').html("Some pokemon");
      $('#hoveringTooltip').css({
          "top" : $(this).offset().top + MYTOPOFFSET,
          "left" : $(this).offset().left + MYLEFTOFFSET
      });
  });
  $('#sprite img').mouseleave(function(){
      $('#hoveringTooltip').remove();
  });
});
