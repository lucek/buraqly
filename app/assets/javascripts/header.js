$(document).ready(function(){
  $(".header-top").mouseenter(function() {
      $(".header-top").fadeTo("slow", 1);
    }).mouseout(function() {
      $(".header-top").fadeTo("slow", 0);
    })
});
