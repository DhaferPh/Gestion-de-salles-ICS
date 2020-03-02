//$alert = alert("")
/*
$( ".resa" ).click(function() {
    $(this).css("background-color", "red");
  });

  $( ".resa" ).dblclick(function() {
    $(this).css("background-color", "rgb(70, 248, 76)");
      $(".modal").css("display", "block");
   
  });

  

  $( ".close" ).click(function() {
    $(".modal").css("display", "none");
  });
*/
  $checkbox = document.getElementsByClassName('check');

  $(".label-check").click(function(){
      $resaElt = this;
    $($checkbox).change(function() {
        if (this.checked) {
            $($resaElt).css("background-color", "red");
        } else {
            $($resaElt).css("background-color", "rgb(70, 248, 76)");
        }
    })
  })
  