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
            Деньги в долг до
            <span class="colorBlue"> 5 000 бел.руб</span>
        </div>
        <div class="content_main_text">
                <pre>Для получения денег в долг или быстрого займа
Вам просто нужно пройти регистрацию.
Работаем и выдаем деньги в долг без залога и поручителей.</pre>
        </div>
    </div>
</header>

<main>
    <div class="main-container">

        <h2 class="main-headline">95% клиентов получили деньги, обратившись в нашу компанию</h2>

        <p class="main-headline2">Предоставляем займы для физических и юридических лиц, в том числе:</p>

        <div class="main-li"> <br> ремесленникам</div>
        <div class="main-li main-line"></div>
        <div class="main-li" >владельцам <br>  агроусадьбы</div>
        <div class="main-li main-line"></div>
        <div class="main-li">учредителям <br> коммерческой <br> организации</div>
        <div class="main-li main-line"></div>
        <div class="main-li">владельцам <br> подсобного <br> хозяйства</div>

        <p class="main-text">Предоставляем деньги в долг только совершеннолетним людям.
            Срочные займы выдаются только в белорусской валюте. Максимальная сумма 5 000 BYN.
            Ремесленникам - необходима квитанция, подтверждающая уплату
            ремесленного сбора или копия квитанции, подтверждающего регулярный доход.
            Владельцам подсобного хозяйства - необходимо предоставить
            правоустанавливающие документы, свидетельства и акты на земельный
            участок, подтверждающие цели, с которыми он передан в личное пользование,
            или же выписку из хозяйственной книги, выданный сельсоветам. Владельцам
            агроусадеб - потребуется квитанция или ее копия, подтверждающая уплату
            сбора за оказание услуг. Учредителям коммерческих организаций - необходима
            заверенная копия устава, собственникам имущества в коммерческих организациях
            - нужно предоставить выписку со счета или договор купли-продажи акций.
        </p>

        <h2 class="main-headline3">Выгодные условия займов:</h2>

        <div class="main-li2">Наличные деньги предоставляются в день обращения или на следующий день.</div>
        <div class="main-li2 main-line2"></div>
        <div class="main-li2">Сроки возврата денежных средств вы определяете самостоятельно: от 1 дня до 3 лет.</div>
        <div class="main-li2 main-line2"></div>
        <div class="main-li2">Обычно погашение производится равными долями в течении оговоренного срока.</div>
        <div class="main-li2 main-line2"></div>
        <div class="main-li2">Но есть возможность досрочного погашения с пересчетом процентов.</div>
        <div class="main-li2 main-line2"></div>
        <div class="main-li2">Срок займа меньше месяца? Такой займ погашается единовременно.</div>
        <div class="main-li2 main-line2"></div>
        <div class="main-li2">Не удалось погасить очередной платеж? Пеня в случае просрочки - 3%.</div>
        <div class="main-li2 main-line2"></div>
        <div class="main-li2">Работаем без залога и поручителей. Полная конфиденциальность.</div>


    </div>
</main>

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
