window.addEventListener('message', function(event) {
  if (event.data.type === "open") {
    $("#container").show().removeClass("slide-out").addClass("container");
     //Sounds.audio1();
    $("#text").html(event.data.text);
    $("#icon-text").html('<i class="' + event.data.icon + '"></i>');

    if (event.data.letter === "") {
      $(".line").hide();
    } else {
      $(".line").show();
    }
      
  } else if (event.data.type === "close") {
    $("#container").removeClass("container").addClass("slide-out");
     //Sounds.audio2();
    $("#container").fadeOut(120);
  } else {
    // Sounds.audio2();
    $("#container").hide();
  }
});

var Sounds = {};
Sounds.audio1 = function() {
  var audio1s = document.getElementById("notifydouble");
  audio1s.volume = 0.19;
  audio1s.play();
};

Sounds.audio2 = function() {
  var audio2s = document.getElementById("dshhui");
  audio2s.volume = 0.21;
  audio2s.play();
};
