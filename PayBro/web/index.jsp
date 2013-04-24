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
        <img src="res/login/logo.png" alt="PayBro - Cepat, Aman, Bersahabat" style="position:absolute; top:10px; left:70px">
        <img src="res/login/middle.png" alt="Customer Service yang baik hati" style="position:absolute; top:125px">
        
        <div id="login">

            <p id="loginTitle"><strong>Selamat Datang,</strong></p>

            <form action="javascript:void(0);" method="get">

                <fieldset>

                    <p><input type="text" required value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Username" -->
                    <br style="margin: 5px 0;">
                    <p><input type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Password" -->

                    <a href="#"><p id="loginForgot">Lupa password?</p></a>

                    <p><input type="submit" value="Masuk"></p>

                </fieldset>

            </form>

        </div> <!-- end login -->
        
        <div id ="signUp"> 
            <div id="signUpTitle" class="inline"> Belum punya akun? </div>
            <form action="javascript:void(0);" method="get" class="inline">
                <fieldset class="inline">
                    <input class="inline" id="small" type="submit" value="Daftar Sekarang">
                </fieldset>
            </form>
        </div>

    </body>
</html>