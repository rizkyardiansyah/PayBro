<%-- 
    Document   : transfer
    Created on : May 12, 2013, 1:15:11 PM
    Author     : Ardi
--%>

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
        <title>PayBro - Transfer Kredit</title>
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
                    <li><a href="home.jsp" title="Beranda">Beranda</a></li>
                    <li><a href="log_transaction.jsp" title="Riwayat Transaksi">Riwayat Transaksi</a></li>
                    <li><a href="refill.jsp" title="Isi Kredit">Isi Kredit</a></li>
                    <li class="active"><a href="transfer.jsp" title="Transfer Kredit">Transfer Kredit</a></li>
                    <li><a href="edit.jsp" title="Edit Akun">Edit Akun</a></li>
                    <li><a href="logout.jsp" title="Keluar">Keluar</a></li>
                </ul>
            </nav>
        </div>  
            
        <div class="transfer">
            <form action="transfer.jsp" method="post">
                <fieldset>
                    <div class="username">
                        Masukkan <i>username</i> tujuan: &nbsp; <input type="text" name="username" required placeholder="username" onBlur="if(this.value=='')this.value='userame'" onFocus="if(this.value=='usernam')this.value='' "> <!-- JS because of IE support; better: placeholder="Reload Code" --> <br><br>
                    </div>
                    <div class="amount">
                        Masukkan nominal <i>transfer</i>: &nbsp; <input type="text" name="amount" required placeholder="amount" onBlur="if(this.value=='')this.value='amount'" onFocus="if(this.value=='amount')this.value='' "> <!-- JS because of IE support; better: placeholder="Reload Code" --> <br><br>
                    </div>
                    <p><input type="submit" value="Kirim"></p>
                </fieldset>
            </form>
            
            <%
            if(request.getParameter("username")!=null){
                String receiver = request.getParameter("username");
                int receiverBalance = 0;
                int amount = Integer.parseInt(request.getParameter("amount"));            
                String query = "SELECT * FROM user WHERE username ='" + receiver + "';";
                Class.forName("com.mysql.jdbc.Driver");
                String userName = "root";
                String password = "";
                String url = "jdbc:mysql://localhost/paybro_db";
                Connection connection = DriverManager.getConnection(url, userName, password);
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(query);         
                
                if(resultSet.first()==true){
                    receiverBalance = resultSet.getInt("balance");
                    receiverBalance += amount;
                    query = "UPDATE user SET balance = "+ receiverBalance + " WHERE username ='"
                    + receiver +"';";
                    Class.forName("com.mysql.jdbc.Driver");
                    userName = "root";
                    password = "";
                    url = "jdbc:mysql://localhost/paybro_db";
                    connection = DriverManager.getConnection(url, userName, password);
                    statement = connection.createStatement();
                    statement.executeUpdate(query);    
                    
                    out.print("<div id='successful'>");
                    out.print("Kredit berhasil dikirim!");
                    out.print("</div>");
                    
                    String sender = session.getAttribute("firstName").toString();
                    int senderBalance = 0;
                    query = "SELECT * FROM user WHERE username ='" + sender + "';";
                    Class.forName("com.mysql.jdbc.Driver");
                    userName = "root";
                    password = "";
                    url = "jdbc:mysql://localhost/paybro_db";
                    connection = DriverManager.getConnection(url, userName, password);
                    statement = connection.createStatement();
                    resultSet = statement.executeQuery(query);  
                    
                    if(resultSet.first()==true){
                        senderBalance = resultSet.getInt("balance")-amount;
                        query = "UPDATE user SET balance = "+ senderBalance + " WHERE username ='"
                        + sender +"';";
                        Class.forName("com.mysql.jdbc.Driver");
                        userName = "root";
                        password = "";
                        url = "jdbc:mysql://localhost/paybro_db";
                        connection = DriverManager.getConnection(url, userName, password);
                        statement = connection.createStatement();
                        statement.executeUpdate(query);  
                        statement.close();
                        connection.close();
                    }  
                    else{
                        statement.close();
                        connection.close(); 
                    }
                }

                else{
                    out.print("<div id='warning'>");
                    out.print("Akun tidak terdaftar!");
                    out.print("</div>");
                    statement.close();
                    connection.close();                       
                }    
            }
            %>
        </div>
    </body>
</html>
