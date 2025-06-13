window.addEventListener('message', function(event){
    if(event.data.action == "show"){
        $(".background").fadeIn(900);
        document.getElementById("casino-text").innerHTML = event.data.text;
        document.getElementById("casino-container").classList.remove("fadeOut");
        document.getElementById("casino-container").classList.add("fadeIn");
    } else if(event.data.action == "hide"){
        $(".background").fadeOut(900);
        document.getElementById("casino-container").classList.remove("fadeIn");
        document.getElementById("casino-container").classList.add("fadeOut");
    }
});