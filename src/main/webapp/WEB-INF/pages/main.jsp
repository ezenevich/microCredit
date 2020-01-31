<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>МикроЗайм</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/infoStyle.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/mainStyle.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/userStyle.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/creditStyle.css">

</head>
<body>

    <div class="main-but-zaim">
        <a href="${pageContext.request.contextPath}/createCredit" style="text-decoration: none;">
            <input type="button" class="button-green" value="оформить займ" style="width: 200px;"/>
        </a>
    </div>

    <div class="main-but-pay">
        <a href="${pageContext.request.contextPath}/payCredit" style="text-decoration: none;">
            <input type="button" class="button-green" value="погасить займ" style="width: 200px;"/>
        </a>
    </div>

    <div class="main-but-hist">
        <a href="${pageContext.request.contextPath}/allCredit" style="text-decoration: none;">
            <input type="button" class="button-green" value="история займов" style="width: 200px;"/>
        </a>
    </div>

    <div class="main-but-exit">
        <a href="${pageContext.request.contextPath}/index.jsp" style="text-decoration: none;">
            <input class="button-white" type="button" value="выход"/>
        </a>
    </div>

    <img src="http://localhost:8080/kursovoi_war/webres/res/mainBg.jpg"  class="pay-bg" alt="photo">
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
