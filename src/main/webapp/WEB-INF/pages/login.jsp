<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Авторизация</title>
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/mainStyle.css">
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/userStyle.css">
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/creditStyle.css">
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/loginRegStyle.css">
    </head>
    <body>
    <form action="${pageContext.request.contextPath}/login" method="POST" class="login-form">
        <input type="text" id="login" name="login" placeholder="Логин:" required/>
        <input type="password" name="pass" id="pass" placeholder="Пароль:" required/>
        <input type="submit" value="войти" id="login-form-input-LogIn" onclick="check();" class="button-green login-btn"/>
    </form>

    <script>
        function check() {
            var login = document.getElementById("login").value;
            var pass = document.getElementById("pass").value;

            localStorage.setItem("login", JSON.stringify(login));
            localStorage.setItem("pass", JSON.stringify(pass));
        }
    </script>

    <form action="${pageContext.request.contextPath}/reg" class="login-reg-btn">
        <input type="submit" value="регистрация" class="button-green"/>
    </form>

    <form action="${pageContext.request.contextPath}/index.jsp" class="login-exit-btn">
        <input type="submit" value="на главную" class="button-white"/>
    </form>

    <img src="http://localhost:8080/kursovoi_war/webres/res/loginRegBg.jpg"  class="login-bg" alt="photo">
    <div class="login-bg-grad"></div>

    <footer>
        <div class="wrapper login-footer">

            <img src="http://localhost:8080/kursovoi_war/webres/res/logo2.jpg" height="40" class="footer-logo" alt="logo2">

            <a href="callto:+375296413000" class="footer-nav foot-tel"><span class="colorWithe">Телефон: </span> +375 (29) 641-30-00</a>

            <a href="mailto:micro.zaim.by@gmail.com" class="footer-nav foot-mail"><span class="colorWithe">Email: </span> micro.zaim.by@gmail.com</a>

            <div class="footer-line"></div>

            <div class="footer-bottom">
                <span>©  <span>2019</span> <span></span>МикроЗайм. Все права защищены</span>
            </div>

        </div>

    </footer>

    </body>
</html>