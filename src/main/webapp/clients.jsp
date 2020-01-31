<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>МикроЗайм</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/mainStyle.css">
</head>
<body>

<header>
    <div class="header-container">

        <img src="http://localhost:8080/kursovoi_war/webres/res/logo.jpg" height="40" class="header-logo" alt="logo">

        <div class="top-menu">
            <a href="index.jsp" class="menu-nav">главная</a>
            <a href="clients.jsp" class="menu-nav">клиентам</a>
            <a href="contacts.jsp" class="menu-nav">контакты</a>
            <a href="callto:+375296413000" class="menu-nav tel">+375 (29) 641-30-00</a>
        </div>

        <div  class="menu-login">
            <a href="${pageContext.request.contextPath}/reg" class="href-text">
                <input type="submit" class="button-white" value="регистрация"/>
            </a>
            <a href="${pageContext.request.contextPath}/login" class="href-text">
                <input type="submit" class="button-green" value="авторизация"/>
            </a>
        </div>

    </div>

    <div class="header-content">
        <div class="content-text">
            ПОДРОБНЕЕ ОБ УСЛОВИЯХ
        </div>
        <div class="content_main_text">
                <pre>Процентная ставка варьируется между
<strong>10-15%</strong>(в зависимости от суммы и срока займа).
Максимальная сумма - до <strong>5000</strong>бел. руб.
Сроки займа от <strong>1</strong> дня до <strong>3</strong> лет.
В случае задержки оплаты пеня составит <strong>20%</strong> от суммы.</pre>
        </div>
    </div>
</header>



<footer>
    <div class="wrapper">

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
