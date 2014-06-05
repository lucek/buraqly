$(document).ready(function(){
  $(".coelho").mouseover(function() {
      if($(".paulo").css("bottom") == "-500px") {
        $(".paulo").css("display", "block")
        $(".paulo").animate({ 
          bottom: "0px",
        }, 200 ).delay(500).animate({ 
          bottom: "-500px",
        }, 200 );
        $.playSound("/zdupy")
      }

    } 
  )
});
