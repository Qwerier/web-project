
function start(){
document.getElementById("faqja").addEventListener("click",faqjaKryesore,false);
document.getElementById("rreth").addEventListener("click",rrethPlatformes,false);

}

function faqjaKryesore(){
window.location.assign("index.php");
}

function rrethPlatformes(){
window.location.assign("rrethPlatformes.php");
}



window.addEventListener("load",start,false);

