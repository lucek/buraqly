$(document).ready(function(){
  $(".coelho").mouseenter(function() {
      if($(".paulo").css("bottom") == "-500px") {
        $(".paulo").css("display", "block")
        $(".paulo").animate({ 
          bottom: "-200px",
        }, 200, function() {
          $.playSound("/zdupy")
        } ).delay(500).animate({ 
          bottom: "-500px",
        }, 200, function() {
          $(this).css("display", "none")
        } );
      }
    } 
  )
});
