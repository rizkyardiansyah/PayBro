<%-- 
    Document   : signup
    Created on : 01-May-2013, 17:19:32
    Author     : Fajar Nugroho
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en-Us">
    <head>
        
        <meta charset="utf-8">

        <title>PayBro - Daftar</title>

        <link rel='stylesheet' href='res/css/styleBro.css'>

        <!--[if lt IE 9]>
                <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>

    <body>
        <img src="res/img/logo.png" alt="PayBro - Cepat, Aman, Bersahabat" style="position:absolute; top:10px; left:70px">
        <img src="res/img/signup_middle.png" alt="Customer Service yang baik hati" style="position:absolute; top:0px; left:800px; height:100%">
        
        <div id="signup">

            <p id="signup_title"><strong>Formulir Registrasi</strong></p>

            <form action="javascript:void(0);" method="get">

                <fieldset>

                    <p><input type="text" required value="Username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Username" -->
                    <br style="margin: 5px 0;">
                    <p><input type="password" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Password" -->
                    <br>
                    <p><input type="submit" value="Daftar"></p>

                </fieldset>

            </form>

        </div> 
        
        <div id ="to_login"> 
            <div id="to_login_title" class="inline"> Sudah punya akun? &nbsp;&nbsp;&nbsp;</div>
            <form action="javascript:void(0);" method="get" class="inline">
                <fieldset class="inline">
                    <input class="inline" id="small" type="submit" value="Masuk">
                </fieldset>
            </form>
        </div>

    </body>
</html>