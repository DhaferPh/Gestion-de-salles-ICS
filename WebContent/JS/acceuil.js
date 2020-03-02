var date = new Date();

var day = date.getDate();
var month = date.getMonth() + 1;
var year = date.getFullYear();

// Si on ne rajoute pas un 0 avant les mois et jours inférieur à 10 la date ne s'affiche pas
if (month < 10){
    month = "0" + month;
}
if (day < 10) {
    day = "0" + day;
}

var today = year + "-" + month + "-" + day;
document.getElementById("start").setAttribute("min", today);       
document.getElementById("start").value = today;