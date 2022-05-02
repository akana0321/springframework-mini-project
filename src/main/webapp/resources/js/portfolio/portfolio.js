function show(imageName) {
    for(var i=1; i<22; i++){
        if (imageName === "sub_" + i){
            document.getElementById("sub_" + i).style.visibility = "visible"; // show
            return
        }
    }
}
function hidden() {
    for(var i=1; i<22; i++){
        if (imageName === "sub_" + i){
            document.getElementById("sub_" + i).style.visibility = "hidden"; // show
            return
        }
    }
}

$( document ).ready(function() {
    $('.trigger').on('click', function() {
       $('.modal-wrapper').toggleClass('open');
  
       return false;
    });
  });