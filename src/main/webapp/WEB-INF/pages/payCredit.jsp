<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Погасить кредит</title>
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/mainStyle.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/userStyle.css">
    <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/creditStyle.css">
</head>
<body>
<div>
    <h1 align="center">У вас активны следующие кредиты:</h1>
</div>
<div id="create-div">

    <table class="tabOrder">

        <tr>
            <th>Кредит</th>
            <th>Срок действия(дней)</th>
            <th>Сумма(бел.руб)</th>
            <th>Процент %</th>
            <th>Сумма к возврату(бел.руб)</th>
            <th>Статус</th>

        </tr>

        <c:forEach items="${orders}" var="i">

            <tr>
                <td>#${i.id}</td>
                <td>${i.days}</td>
                <td>${i.sum}</td>
                <td>${i.proc}</td>
                <td>${i.paySum}</td>
                <td>${i.type}</td>
            </tr>

        </c:forEach>

    </table>

    <form action="payCredit" class="pay-form" method="post">

        <div class="">
            <input type="text" name="card" id="card" placeholder="Номер карты:" required/>

            <input type="text" name="date" id="date" placeholder="Срок действия:" required/>

            <input type="text" name="holder" id="holder" placeholder="Владелец карточки:" required/>

            <input type="password" name="pass" id="pass" placeholder="Подтвердите пароль аккаунта" required/>
        </div>

        <span class="credit-span pay-select">Выберете кредит:</span>

        <select  id="order" name="orderId">
            <c:forEach items="${orders}" var="i">
                <option name="orderIdCheck" class="sector-option" value="${i.id}">Кредит #${i.id}</option>
            </c:forEach>
        </select>

        <input type="submit" value="Далее" name="but2"  id="create-input-submit" class="button-green pay-btn"/>

    </form>


</div>
<a href="${pageContext.request.contextPath}/main" class="href-text pay-exit-btn">
    <input type="submit" value="Назад" class="button-white"/>
</a>

<img src="http://localhost:8080/kursovoi_war/webres/res/creditBg.jpg"  class="pay-bg" alt="photo">
<div class="pay-bg-grad"></div>

<footer>
    <div class="wrapper pay-footer">

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