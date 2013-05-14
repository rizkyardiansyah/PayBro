<%-- 
    Document   : home
    Created on : May 12, 2013, 8:42:20 AM
    Author     : Ardi
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="javax.ejb.EJB"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">

        <title>PayBro - Beranda</title>

        <link rel='stylesheet' href='res/css/styleBro.css'>

        <!--[if lt IE 9]>
                <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->

    </head>
    <body>
        
        <img src="res/img/logo.png" alt="PayBro - Cepat, Aman, Bersahabat" style="position:absolute; top:10px; left:70px">

        <div class="container">
            <nav>
                <ul class="nav">
                    <li class="active"><a href="home.jsp" title="Beranda">Beranda</a></li>
                    <li><a href="log_transaction.jsp" title="Riwayat Transaksi">Riwayat Transaksi</a></li>
                    <li><a href="refill.jsp" title="Isi Kredit">Isi Kredit</a></li>
                    <li><a href="transfer.jsp" title="Transfer Kredit">Transfer Kredit</a></li>
                    <li><a href="edit.jsp" title="Edit Akun">Edit Akun</a></li>
                    <li><a href="logout.jsp" title="Keluar">Keluar</a></li>
                </ul>
            </nav>
        </div>  
        <%
            String uname = session.getAttribute("username").toString();
            String query = "SELECT * FROM user WHERE username ='" + uname + "';";
            Class.forName("com.mysql.jdbc.Driver");
            String userName = "root";
            String password = "";
            String url = "jdbc:mysql://localhost/paybro_db";
            Connection connection = DriverManager.getConnection(url, userName, password);
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery(query);

            if(resultSet.first()==true){             
                session.setAttribute("email",resultSet.getNString("email"));
                session.setAttribute("firstName",resultSet.getNString("firstName"));
                session.setAttribute("lastName",resultSet.getNString("lastName"));
                session.setAttribute("placeOfBirth",resultSet.getNString("placeOfBirth"));
                session.setAttribute("dateOfBirth",resultSet.getDate("dateOfBirth"));
                session.setAttribute("address",resultSet.getNString("address"));
                session.setAttribute("city",resultSet.getNString("city"));
                session.setAttribute("province",resultSet.getNString("province"));
                session.setAttribute("postalCode",resultSet.getNString("postalCode"));
                session.setAttribute("phone",resultSet.getNString("phone"));
                session.setAttribute("balance",resultSet.getInt("balance"));
                statement.close();
                connection.close();                       
            }

            else{
                statement.close();
                connection.close();                       
            }    
            
        %>
            
        <div class="homeuser">
            <div class="name">
                <%= session.getAttribute("firstName") %>&nbsp;<%= session.getAttribute("lastName") %><br>
            </div>
            <div class="date">
                <%= session.getAttribute("city") %>, <%= session.getAttribute("dateOfBirth") %><br>
            </div>
            <div class="address">
                <%= session.getAttribute("address") %>, <%= session.getAttribute("city") %>, <%= session.getAttribute("province") %>
                <%= session.getAttribute("postalCode") %><br>
                <%= session.getAttribute("phone") %> - <%= session.getAttribute("email") %>
            </div>
        </div>
            
        <div class="homesaldo">
            <div class="title">
                Saldo Anda:
            </div>
            <div class="saldo">
                Rp. <%= session.getAttribute("balance") %>
            </div>
        </div>
    </body>
</html>

