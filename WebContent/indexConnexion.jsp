<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="./CSS/acceuil.css">
    <title>R�servation Salle ICS</title>
</head>

<body>

    <header>
        <nav class="navigation_header">
            <div class="bloc-prof">
                <h2><c:if test="${!empty param.pseudo}">
		<p>
			<c:out value="${param.pseudo}" />
		</p>
	</c:if></h2>
            
            </div>
            <div class="title_top">
                <a href="index.html">
                    <h1 class="first_title">ICS r�servation de salle</h1>
                </a>
            </div>
            <ul class="nav_categorie">
                <li><h2>Discussion</h2></li>
                <li class="img-reseaux"><a href="HTML/reservation.html"><img src="./img/icone-discord.png" alt="icone Discord"></a></li>
                <!--<a target="_blank" href="https://icones8.fr/icons/set/discord-new-logo">Nouveau logo Discord icon</a> icon by <a target="_blank" href="https://icones8.fr">Icons8</a>-->
            </ul>
            <div class="burger">
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
            </div>
        </nav>
    </header>
    <section id="test">
        <aside>
            <div id="dateSearch">
                <label for="start">Veuillez entrez votre date de r�servation:</label>

                <input type="date" id="start" name="trip-start" max="2020-12-31">
            </div>
        </aside>
        <div class="container">
            <div class="row">
                <div class="col-sm-3">
                    <div class="card" style="width: 20rem;">
                        <img src="img/workspace1.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">OpenSpace<span class="capacites">(60 Places)</span></h5>
                            <p class="card-text">R�serv� par<span class="name"> R�mi </span><br>
                                Date et heure de r�servation<span class="date"> 30 F�vrier de 13H00 � 14H00</span>
                            </p>
                            <div class="card-bottom-btn">
                                <a href="HTML/reservation.html" class="btn btn-primary">R�servation</a>
                                <div class="cercle"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card" style="width: 20rem;">
                        <img src="img/workspace2.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Th�o <span class="capacites">(20 Places)</span></h5>
                            <p class="card-text">R�serv� par<span class="name"> R�mi </span><br>
                                Date et heure de r�servation<span class="date"> 30 F�vrier de 13H00 � 14H00</span>
                            </p>
                            <div class="card-bottom-btn">
                                <a href="HTML/reservation.html" class="btn btn-primary">R�servation</a>
                                <div class="cercle"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card" style="width: 20rem;">
                        <img src="img/workspace3.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Plato <span class="capacites">(15 Places)</span></h5>
                            <p class="card-text">R�serv� par<span class="name"> R�mi </span><br>
                                Date et heure de r�servation<span class="date"> 30 F�vrier de 13H00 � 14H00</span>
                            </p>
                            <div class="card-bottom-btn">
                                <a href="HTML/reservation.html" class="btn btn-primary">R�servation</a>
                                <div class="cercle"></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="card" style="width: 20rem;">
                        <img src="img/workspace4.jpeg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Buro <span class="capacites">(10 Places)</span></h5>
                            <p class="card-text">R�serv� par<span class="name"> R�mi </span><br>
                                Date et heure de r�servation<span class="date"> 30 F�vrier de 13H00 � 14H00</span>
                            </p>
                            <div class="card-bottom-btn">
                                <a href="HTML/reservation.html" class="btn btn-primary">R�servation</a>
                                <div class="cercle"></div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        </div>

    </section>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
    <script src="JS/acceuil.js"></script>
    <script src="JS/burger.js"></script>
</body>

</html>