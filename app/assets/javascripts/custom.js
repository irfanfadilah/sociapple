// Change like button label
$(document).on("click", ".js-like-btn", function(){
  if ( $(this).text()=="Like" ){
    $(this).text("Unlike");
  } else {
    $(this).text("Like");
  }
});

// Toggle comment/reply sections
function toggleSection(section, id){
  $("#js-"+section+"-section-"+id).slideToggle();
}
