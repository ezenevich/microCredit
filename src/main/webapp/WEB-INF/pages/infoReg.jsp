<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>МикроЗайм</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/mainStyle.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/userStyle.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/creditStyle.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/infoStyle.css">
    <script src="webres/js/scripts.js" type="text/javascript"></script>
</head>

<body onload="redirectTimeOut('${pageContext.request.contextPath}/index.jsp');">
<h1 class="info-h1">${info}</h1>


<form class="info-form-btn" action="${pageContext.request.contextPath}/index.jsp">
    <input type="submit" value="На главную" class="button-green"/>
</form>

<form class="info-redirect-timer">Вы будете перенаправленны на главную страницу через: <span id="countdown">5</span>.
</form>

<img src="http://localhost:8080/kursovoi_war/webres/res/infoBg.jpg"  class="pay-bg" alt="photo">
<div class="pay-bg-grad"></div>

<footer>
    <div class="wrapper info-footer">

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