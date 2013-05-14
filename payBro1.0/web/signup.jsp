<%-- 
    Document   : signup
    Created on : May 12, 2013, 8:41:26 AM
    Author     : Ardi
--%>

<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
                    <p><input type="text" required name="username" placeholder="username" onBlur="if(this.value=='')this.value='username'" onFocus="if(this.value=='username')this.value='' "> <!-- JS because of IE support; better: placeholder="Username" -->
                                      
                    <input type="password" required name="password" placeholder="password" onBlur="if(this.value=='')this.value='password'" onFocus="if(this.value=='password')this.value='' "></p> <!-- JS because of IE support; better: placeholder="Password" -->
                    <br>
                                       
                    <p><input type="text" style='display:inline;' required name="firstName" placeholder="nama depan" onBlur="if(this.value=='')this.value='nama depan'" onFocus="if(this.value=='nama depan')this.value='' ">
                    <input type="text" style='display:inline;' required name="lastName" placeholder="nama belakang" onBlur="if(this.value=='')this.value='nama belakang'" onFocus="if(this.value=='nama belakang')this.value='' "></p> 
                    <br>
                    
                    <p><input type="text" style='display:inline;' required name="placeOfBirth" placeholder="tempat lahir" onBlur="if(this.value=='')this.value='tempat lahir'" onFocus="if(this.value=='tempat lahir')this.value='' ">                     
                    <input type="date" style='display:inline;' required name="dateOfBirth" value="tanggal"> </p>
                    <br>
                    
                    <p><input type="text" style='display:inline;' required name="phone" placeholder="nomor telepon" onBlur="if(this.value=='')this.value='nomor telepon'" onFocus="if(this.value=='nomor telepon')this.value='' ">
                    <input type="email" style='display:inline;' required name="email" value="email" onBlur="if(this.value=='')this.value='email'" onFocus="if(this.value=='email')this.value='' ">
                    </p>                     
                    <br>
                    
                    <p><input type="text" style='display:inline;' required name="address" placeholder="alamat" onBlur="if(this.value=='')this.value='alamat'" onFocus="if(this.value=='alamat')this.value='' ">                     
                        <input type="text" style='display:inline;' required name="city" placeholder="kota" onBlur="if(this.value=='')this.value='kota'" onFocus="if(this.value=='kota')this.value='' ">
                    </p>                     
                    <br>
                    
                    <p><input type="text" style='display:inline;' required name="province" placeholder="propinsi" onBlur="if(this.value=='')this.value='propinsi'" onFocus="if(this.value=='propinsi')this.value='' ">                     
                        <input type="text" style='display:inline;' required name="postalCode" placeholder="kode pos" onBlur="if(this.value=='')this.value='kode pos'" onFocus="if(this.value=='kode pos')this.value='' ">
                    </p>          
                    <%
                        if(request.getParameter("username")!=null){
                        
                            String uname = request.getParameter("username");
                            String query = "SELECT * FROM account WHERE username ='" + uname + "';";
                            Class.forName("com.mysql.jdbc.Driver");
                            String userName = "root";
                            String password = "";
                            String url = "jdbc:mysql://localhost/paybro_db";
                            Connection connection = DriverManager.getConnection(url, userName, password);
                            Statement statement = connection.createStatement();
                            ResultSet resultSet = statement.executeQuery(query);
                            
                            if(resultSet.first()==false){
                                String pass = request.getParameter("password");
                                String firstName = request.getParameter("firstName");
                                String lastName = request.getParameter("lastName");
                                String placeOfBirth = request.getParameter("placeOfBirth");
                                String dateOfBirth = request.getParameter("dateOfBirth");
                                String phone = request.getParameter("phone");
                                String email = request.getParameter("email");
                                String address = request.getParameter("address");
                                String city = request.getParameter("city");
                                String province = request.getParameter("province");
                                String postalCode = request.getParameter("postalCode");
                                int initialBalance = 0;
                                
                                query = " INSERT INTO account (username, password, roleID) VALUES"
                                        + "('"+uname+"','"+pass+"',1);";
                                        
                                Class.forName("com.mysql.jdbc.Driver");
                                userName = "root";
                                password = "";
                                url = "jdbc:mysql://localhost/paybro_db";
                                connection = DriverManager.getConnection(url, userName, password);
                                statement = connection.createStatement();
                                int resultSet1 = statement.executeUpdate(query);
                                
                                query = " INSERT INTO user (username, email, firstName,lastName,"
                                        + "placeOfBirth,dateOfBirth,address,city,province,"
                                        + "postalCode,phone,balance) VALUES"
                                        + "('"+uname+"','"+email+"','"+firstName+"','"
                                        + lastName +"','"+placeOfBirth+"','"+dateOfBirth
                                        + "','"+address+"','"+city+"','"+province+"','"
                                        + postalCode+"','"+phone+"'"+","+initialBalance+");";                              
                                
                                Class.forName("com.mysql.jdbc.Driver");
                                userName = "root";
                                password = "";
                                url = "jdbc:mysql://localhost/paybro_db";
                                connection = DriverManager.getConnection(url, userName, password);
                                statement = connection.createStatement();
                                statement.executeUpdate(query);                                              
                             
                                connection.close();
                                statement.close();
                                session.setAttribute("username", uname);
                                response.sendRedirect("home.jsp"); 
                            }
                            
                            else{
                                out.print("<div id='warning'>");
                                out.print("Username tidak bisa digunakan!");
                                out.print("</div>");
                                statement.close();
                                connection.close();                       
                            }    
                        }
                    %>
                    <br>
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