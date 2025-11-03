<%-- 
    Document   : registro
    Created on : 3 nov 2025, 00:11:41
    Author     : Alberto Jimenez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>Registrate - Nebula</title>
        <meta charset="UTF-8">
        <link href="styles/styles.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>

        <%@include file="/WEB-INF/fragments/navbar.jspf"%>

        <header class="hero-pagina">
            <h1>Registro de usuarios</h1>
        </header>
        <main>
            <section>
                <form name="form_nuevo_usuario"
                      method="POST"
                      action="/Practica04/UsuarioServlet"
                      enctype="application/x-www-form-urlencoded"
                      >
                    <div name="titulo">
                        <h3>Nuevo usuario</h3>
                        <span>Completa la información y envia tus datos</span>
                    </div>
                    <div name="nombre">
                        <label for="txt_name">Nombre</label>
                        <input id="txt_name" name="txt_name" type="text" minlength="10" maxlength="100" required>
                        <span>Tu nombre completo</span>
                    </div>
                    <div name="correo">
                        <label for="txt_mail">Correo</label>
                        <input id="txt_mail" name="txt_mail" type="email" minlength="5" maxlength="100" required>
                        <span>Tu correo para resivir notificaciones</span>
                    </div>
                    <div name="dob">
                        <label for="txt_dob">Fecha de nacimiento</label>
                        <input type="date" , name="txt_dob" , id="txt_dob" required>
                        <span>Tu fecha de nacimiento</span>
                    </div>
                    <div name="contraseña">
                        <label for="txt_password">Contraseña</label>
                        <input id="txt_password" name="txt_password" type="password">
                        <span>Tu contraseña para acceder a tu cuenta</span>
                    </div>
                    <div name="pseudonimo">
                        <label for="txt_nickname">Pseudonimo</label>
                        <input id="txt_nickname" name="txt_nickname" type="text" required
                               pattern="[a-zA-Z]{3,10}-[0-9]{2,10}">
                        <span>Como te vas a identificar con otros usuarios</span>
                    </div>
                    <div name="estado">
                        <label for="rad_status">Estado</label>
                        <div name="radios_estados">
                            <input type="radio" value="soltero" id="rad_single" name="rad_status">
                            <label for="rad_single">Soltero</label><br>
                            <input type="radio" value="casado" id="rad_maried" name="rad_status">
                            <label for="rad_maried">Casado</label><br>
                            <input type="radio" value="complicado" id="rad_complicated" name="rad_status">
                            <label for="rad_complicated">Es complicado</label><br>
                        </div>
                        <div name="cuenta">
                            <label for="sel_account">Cuenta</label>
                            <select id="sel_account" name="sel_account">
                                <option value="">Selecciona una opción</option>
                                <option value="gratis">Gratuito</option>
                                <option value="basica">Basica</option>
                                <option value="premium">Premium</option>
                            </select>
                            <span>Selecciona tu tipo de cuenta para desbloquear características</span>
                        </div>
                        <div name="tyc">
                            <label for="chk_tyc">Aceptar <a href="./tyc.jsp" target="_blank">Términos y condiciones</a>
                                terminos y condiciones</label>
                            <input type="checkbox" id="chk_tyc" name="chk_tyc" value="Aceptado" required>
                            <span>Debes aceptar los terminos y condiciones para poder registrarte</span>
                        </div>
                        <div name="options">
                            <button type="submit">Registrar</button>
                            <button type="reset">Cancelar</button>
                        </div>
                    </div>
                </form>
            </section>
        </main>

        <%@include file="/WEB-INF/fragments/footer.jspf"%>

    </body>

</html>
