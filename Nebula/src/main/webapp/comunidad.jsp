<%-- 
    Document   : comunidad
    Created on : 3 nov 2025, 00:10:20
    Author     : Alberto Jimenez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Comunidad - Nebula</title>
        <meta charset="UTF-8">
        <link href="styles/styles.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>

        <%@include file="/WEB-INF/fragments/navbar.jspf"%>

        <header class="hero-pagina">
            <h1>Una comunidad que crece día con día</h1>
        </header>
        <main>
            <section>
                <h3>Bienvenidos los nuevos usuarios</h3>
                <table style="border: 1px solid lightpink;">
                    <thead>
                    <th></th>
                    <th>Nombre</th>
                    <th>Pseudonimo</th>
                    <th>Fecha de registro</th>
                    <th>Tipo de cuenta</th>
                    </thead>
                    <tbody>
                        <tr>
                            <td>
                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/250px-User_icon_2.svg.png"
                                     width="50px">
                            </td>
                            <td>
                                Alberto Jiménez <span>alberto.jimenez@gmail.com</span>
                            </td>
                            <td>Using</td>
                            <td>11 de septiembre de 2025</td>
                            <td>Premium</td>
                        </tr>
                        <tr>
                            <td>
                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/250px-User_icon_2.svg.png"
                                     width="50px">
                            </td>
                            <td>
                                Daniela García <span>daniela.garcia@gmail.com</span>
                            </td>
                            <td>Dani_freccs</td>
                            <td>10 de septiembre de 2025</td>
                            <td>Premium</td>
                        </tr>
                        <tr>
                            <td>
                                <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/User_icon_2.svg/250px-User_icon_2.svg.png"
                                     width="50px">
                            </td>
                            <td>
                                Hugo Cordova <span>hugo.cordova@gmail.com</span>
                            </td>
                            <td>SassierNewt</td>
                            <td>10 de septiembre de 2025</td>
                            <td>Premium</td>
                        </tr>
                    </tbody>
                </table>
            </section>
        </main>

        <%@include file="/WEB-INF/fragments/footer.jspf"%>

    </body>

</html>
