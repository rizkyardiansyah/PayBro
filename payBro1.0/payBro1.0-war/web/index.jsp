<%-- 
    Document   : index
    Created on : Apr 16, 2013, 4:19:26 PM
    Author     : Ardi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en-Us">
    <head>
        <meta charset="utf-8">
        <title>PayBro - Masuk</title>
        <link rel='stylesheet' href='res/css/styleBro.css'>
        <!--[if lt IE 9]>
                <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
    </head>

    <body>
        <img src="res/img/logo.png" alt="PayBro - Cepat, Aman, Bersahabat" style="position:absolute; top:10px; left:70px">
        <img src="res/img/login_middle.png" alt="Customer Service yang baik hati" style="position:absolute; top:125px">
        <div id="login">
            <p id="login_title"><strong>Selamat Datang,</strong></p>
            <form action="home.jsp" method="post">
                <fieldset>
                    <p><input type="text" value="Username" name="username" onBlur="if (this.value == '')
                                this.value = 'Username'" onFocus="if (this.value == 'Username')
                                this.value = ''"></p> <!-- JS because of IE support; better: placeholder="Username" -->
                    <br style="margin: 5px 0;">
                    <p><input type="password" value="Password" name="password" onBlur="if (this.value == '')
                                this.value = 'Password'" onFocus="if (this.value == 'Password')
                                this.value = ''"></p> <!-- JS because of IE support; better: placeholder="Password" -->
                    <a href="#"><p id="loginForgot">Lupa password?</p></a>
                    <p><input type="submit" value="Masuk"></p>
                </fieldset>
            </form>
            
        </div> <!-- end login -->

        <div id ="to_signup"> 
            <div id="to_signup_title" class="inline"> Belum punya akun? &nbsp;&nbsp;&nbsp;</div>
            <form action="signup.jsp" method="post" class="inline">
                <fieldset class="inline">
                    <input class="inline" id="small" type="submit" value="Daftar Sekarang">
                </fieldset>
            </form>
        </div>
    </body>
</html>