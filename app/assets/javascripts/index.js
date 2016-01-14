$(function(){ $(document).foundation();

    $('.diner').hover(
      function() {
      // $(this).animate({ height: "190px", width: "auto" }, 300);
      $(this).css("box-shadow", "15px 15px 10px #4682B4");
    }, function() {
      // $(this).stop().animate({ height: "180px", width: "auto" }, 300);
      $(this).stop().css("box-shadow", "0px 10px 6px -6px #4682B4");
    }
  );

});
