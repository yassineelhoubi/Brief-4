/* modal for add assignments */

var modal_btn = document.querySelector("#btn-modal");
var modal = document.querySelector("#modal");

modal_btn.onclick= function(){
    modal.style.display = "flex";
  }
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  };
};


/* modal for remove assignments */

/* var modal_btn_dlt = document.querySelector("#btn-delet-assignment");
var modal_dlt = document.getElementById("modal-dlt")

modal_btn_dlt.onclick= function(){
    modal_dlt.style.display = "flex";
} */
/* var modal_dlt = document.getElementById("modal-dlt");
window.onclick = function(event) {
    if (event.target == modal_dlt) {
      modal_dlt.style.visibility = "hidden";
    }
  } */
/*   var span = document.getElementById("close");
  span.onclick = function() {
    modal.style.visibility = "hidden";
  }; */
