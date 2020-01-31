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
            ЕСЛИ У ВАС ЕСТЬ ВОПРОСЫ
        </div>
        <div class="content_main_text">
                <pre>Вы можете позвонить нам:
<a href="callto:+375296413000" class="menu-nav tel">+375 (29) 641-30-00  </a>МТС
<a href="callto:+375298526459" class="menu-nav tel">+375 (29) 852-64-59  </a>А1
<a href="callto:+375251458693" class="menu-nav tel">+375 (25) 145-86-93  </a>Life
Или написать нам:
<a href="mailto:micro.zaim.by@gmail.com" class="menu-nav tel">micro.zaim.by@gmail.com</a></pre>
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
