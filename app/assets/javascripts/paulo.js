$(document).ready(function(){
  $(".quote").mouseover(function() {
      $(".paulo").css("display", "block")
      $.playSound("/zdupy")
    } 
  )

  $(".quote").mouseout(function() {
      $(".paulo").css("display", "none")
    } 
  )
});
