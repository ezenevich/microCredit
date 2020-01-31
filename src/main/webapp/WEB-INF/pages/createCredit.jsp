<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Оформить займ</title>
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/userStyle.css">
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/creditStyle.css">
        <link rel="stylesheet" type="text/css" href="http://localhost:8080/kursovoi_war/webres/css/mainStyle.css">
    </head>
    <body>
        <div>
            <h1 align="center">Введите следующую информацию:</h1>
        </div>
        <div>
            <form action="createCredit" class="creat-credit-form" method="post">

                <input type="text" name="sum" id="sum" placeholder="Сумму займа(бел.руб):" required/>

                <input type="text" name="days" id="days" placeholder="Срок займа(дней):" required/>

                <span class="type-span">Способ начисления:</span>


                <input type="radio" id="type-card" name="type" value="card" checked/>
                <label class="type-label" for="type-card">Кредитная карта</label>


                <input type="radio" id="type-phone" name="type" value="phone"/>
                <label class="type-label" for="type-phone">Мобильный телефон</label>

                <div class="tab" id="form-2">
                    <input type="text" name="phone" id="phone" placeholder="Номер телефона:" />

                    <input type="text" name="operator" id="operator" placeholder="Мобильный оператор:" />
                </div>

                <div class="tab" id="form-1">
                    <input type="text" name="card" id="card" placeholder="Номер карты:" />

                    <input type="text" name="date" id="date" placeholder="Срок действия:" />

                    <input type="text" name="holder" id="holder" placeholder="Владелец карточки:" />
                </div>

                <div class="proc">
                    <label for="procent" class="proc-label" >Процент займа:</label>
                    <input type="text" name="procent" id="procent"  readonly/>

                    <label for="paySum" class="proc-label" >Сумма к возврату:</label>
                    <input type="text" name="paySum" id="paySum"  readonly/>

                    <input type="password" name="pass" id="pass" placeholder="Подтвердите пароль аккаунта" required/>
                </div>

                <input type="button" value="подтвердить" id="check" class="button-green" onclick="checkSum()"/>
                <input type="submit" value="далее" class="button-green hidden" id="create-input-submit"/>


                <script type="text/javascript">
                    function checkSum() {
                        var sum = parseFloat(document.getElementById("sum").value);
                        var days = document.getElementById("days").value;

                        var p = 0;
                        var paySum = 0;

                        if(sum < 100){
                            p += 11;
                        } else {
                            if(sum < 1000){
                                p += 10;
                            }
                            else{
                                p += 9;
                            }
                        }

                        if(days < 7){
                            p += 4;
                        } else {
                            if(days < 31){
                                p += 3;
                            }
                            else{
                                if(days < 365){
                                    p += 2;
                                }
                                else{
                                    p += 1;
                                }
                            }
                        }




                        var pass = document.getElementById("pass").value;
                        var pass2 =  JSON.parse(localStorage.getItem("pass"));
                        if(pass === pass2){
                            paySum = sum + (sum*p/100);
                            document.getElementById("procent").value = p;
                            document.getElementById("paySum").value = paySum;
                            document.getElementById("create-input-submit").classList.remove("hidden");
                        }
                        else {
                            alert("Введённый вами пароль не совпадает с паролям авторизированного аккаунта!Проверьте правильность вводимых данных.")
                        }

                    }

                </script>


            </form>
            
        </div>
        <a href="${pageContext.request.contextPath}/main">
                <input type="submit" class="button-white btn-exit" value="на главную"/>
            </a>

        <img src="http://localhost:8080/kursovoi_war/webres/res/creditBg.jpg" height="60%" class="credit-bg" alt="photo">

        <footer>
            <div class="wrapper credit-footer">

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
