var pic = document.getElementById("SoccerBall");
document.getElementById("body").style.color = "red";

function myFunction(event){
  pic.style.height = "800px";
};

pic.addEventListener('click', myFunction);