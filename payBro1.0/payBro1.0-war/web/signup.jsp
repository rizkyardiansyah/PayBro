<%-- 
    Document   : signup
    Created on : May 12, 2013, 8:41:26 AM
    Author     : Ardi
--%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
            <form action="signup.jsp" method="post">
                <fieldset>
                    <p><input type="text" required name="username" onBlur="if(this.value=='')this.value='Username'" onFocus="if(this.value=='Username')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Username" -->
                    <br style="margin: 5px 0;">
                    <p><input type="password" required name="password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Password" -->
                    <br><br>
                    <%if(request.getParameter("username")!=null){
                        String uname = request.getParameter("username");
                        String query = "SELECT * FROM account WHERE username ='" + uname + "';";
                        Class.forName("com.mysql.jdbc.Driver");
                        String userName = "root";
                        String password = "";
                        String url = "jdbc:mysql://localhost/paybro_db";
                        Connection connection = DriverManager.getConnection(url, userName, password);
                        Statement statement = connection.createStatement();
                        ResultSet resultSet = statement.executeQuery(query);

                        if(resultSet.first()){
                            out.print("<div id='warning'>");
                            out.print("Username tidak boleh digunakan!");
                            out.print("</div>");
                            connection.close();
                        }
                        else{
                            statement.close();                           
                            session.setAttribute("username", uname);
                            response.sendRedirect("home.jsp");
                        }
                    %>
                        <!-- set data ke objek 'newAccount' -->
                        <jsp:useBean id="newAccount" class="pb.javabean.AccountBean" />
                        <jsp:setProperty name="newAccount" property="username" param="first_name" />
                        <jsp:setProperty name="newAccount" property="password" param="last_name" />

                        <!-- construct objek 'data' -->
                        <jsp:useBean id="data" class="pb.javabean.AccountDataBean" scope="session"  />
                        <jsp:getProperty name="newAccount" property="username"/>
                        <jsp:getProperty name="newAccount" property="password"/>
                    <% 
                        data.insertAccount(newAccount);        
                        session.setAttribute("username", uname);
                        response.sendRedirect("home.jsp");   
                        }
                    %>
                    <p><input type="submit" value="Daftar"></p>
                </fieldset>
            </form>
        </div> 
        
        <div id ="to_login"> 
            <div id="to_login_title" class="inline"> Sudah punya akun? &nbsp;&nbsp;&nbsp;</div>
            <form action="index.jsp" method="post" class="inline">
                <fieldset class="inline">
                    <input class="inline" id="small" type="submit" value="Masuk">
                </fieldset>
            </form>
        </div>
    </body>
</html>