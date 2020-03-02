<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Reservation.css" />
<title>Réservation</title>
</head>
<body>
<p>
<script> var date= new Date().toLocaleDateString();
document.write(date);
date.style.fontFamily = "Impact,Helvetica, sans-serif";
</script>

</p> <h1>Réservez la salle <em>Buro</em> !</h1>

		<form onsubmit="return validate()" method="post" action="/GestionDeSalles/reservationBuro.html"> 
			<div class="champdesaisideformulaire"><label for="Nom"> Nom:</label> <input type="text"
				pattern="[a-zA-Z].{2,17}" title="Saisir entre 3 et 18 lettres majuscules ou minuscules!"
				name="Nom" required></div>
				
			<div><label for="Prenom"> Prénom:</label> <input
				type="text" name="Prenom" pattern="[a-zA-Z].{2,17}"
				title="Saisir entre 3 et 18 lettres majuscules ou minuscules!" required></div>
			
			<div><label for="telephone"> Tél:<input type="tel" name="telephone" id="telephone" pattern="[0-9].{9}" title="Dix chiffres!" required> </label>
								</div>
								
			<div><label for="Prenom"> Mail:</label><input type="text" name="email" id="email"
				placeholder="exemple@cote-azur.cci.fr"
				title="test@cote-azur.cci.fr" required /></div> <!-- pattern="\b[a-z0-9._%+-]" --> 
				
			<div><label for="date"> Date:</label><input type="date" name="calendrier"></div>
			
			<div><label for="heuredebut"> De:</label><input type="time" name="heuredebut"></div>
			<div><label for="heurefin"> à:</label><input type="time" name="heurefin"></div>
			
			
			<p><input class=boutton type="submit" value="Réserver"></p>
			
		    </form>
		    <a href="reservationBuro.html"> Réserver un autre horaire </a><br>
		    <a href="reservationBuro.html"> Réserver une autre salle</a>
			
		<p>Cette page est une vue de "connexion.jsp"</p>
		<div > <c:forEach var="utilisateur" items="${utilisateurs}">
	<li><c:out value="${utilisateur.nom}"/> <c:out value="${utilisateur.prenom}"/> </li>
	</c:forEach></div>
	
	<script type="text/javascript">
	function validate(){
		var email=document.getElementById("email").value;
		var mailcomplet=email+"@cote-azur.cci.fr";
		
		
		}
	</script>
				
</body>

</html>