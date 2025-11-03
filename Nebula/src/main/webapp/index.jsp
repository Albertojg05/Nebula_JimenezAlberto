<%-- 
    Document   : index
    Created on : 3 nov 2025, 00:09:11
    Author     : Alberto Jimenez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Nebula music</title>
        <meta charset="UTF-8">
        <link href="styles/styles.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        
        <%@include file="/WEB-INF/fragments/navbar.jspf"%>
        
        <header class="hero-portada">
            <img src="./imgs/cover.jpg" width="100%" height="500px" />
            <h1>Tú musica en la <span>nube</span> y en tu <span>espacio</span> </h1>
        </header>

        <main>
            <section class="grid-articulos">
                <article class="card-articulo">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiR6cg-N3_xor9O6govOCQXNU6POMX0GmIhg&s"
                         width="250px" height="250px" />
                    <h3>Tyler, the creator</h3>
                    <p>El nuevo albúm de Tyler<i>"Muy bueno"</i>
                        10/10 recomendado
                    </p>
                </article>

                <article class="card-articulo">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2D3QiQpdsEu_-JG8ueCyvwkYeczD6qW3OGQ&s"
                         width="250px" height="250px" />
                    <div>
                        <h3>Oasis</h3>
                        <h4>Revela el setlist completo para sus proximos conciertos</h4>
                    </div>
                    <p>Los hermanos Liam y Noel Gallagher</p>
                </article>

                <article class="card-articulo">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpqElJTExGpQEGulNVxnhrwujF9uIAoPsyyw&s"
                         width="250px" height="250px" />
                    <h3>No han sacado albúm</h3>
                    <p>No saca albúm y ya me escuche todos</p>
                </article>
            </section>
        </main>

        <%@include file="/WEB-INF/fragments/footer.jspf"%>
        
    </body>

</html>
