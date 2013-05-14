<%-- 
    Document   : edit
    Created on : May 12, 2013, 1:15:37 PM
    Author     : Ardi
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">

        <title>PayBro - Edit Akun</title>

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
                    <li><a href="transfer.jsp" title="Transfer Kredit">Transfer Kredit</a></li>
                    <li class="active"><a href="edit.jsp" title="Edit Akun">Edit Akun</a></li>
                    <li><a href="logout.jsp" title="Keluar">Keluar</a></li>
                </ul>
            </nav>
        </div>  
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
        <div class="edit">
            <form action="edit.jsp" method="post">
                <fieldset>
                    <div class="label">
                        <p>Edit Profil: <br><br></p>
                    </div>

                    <div>
                        <p><input type="text" style='display:inline;' required placeholder="nama depan" onBlur="if(this.value=='')this.value='nama depan'" onFocus="if(this.value=='nama depan')this.value='' ">
                            <input type="text" style='display:inline;' required placeholder="nama belakang" onBlur="if(this.value=='')this.value='nama belakang'" onFocus="if(this.value=='nama belakang')this.value='' "></p> 
                        <br>
                        <p><input type="text" style='display:inline;' required placeholder="tempat lahir" onBlur="if(this.value=='')this.value='tempat lahir'" onFocus="if(this.value=='tempat lahir')this.value='' ">                     
                            <input type="date" style='display:inline;' required value="tanggal"> </p>
                        <br>

                        <p><input type="text" style='display:inline;' required placeholder="nomor telepon" onBlur="if(this.value=='')this.value='nomor telepon'" onFocus="if(this.value=='nomor telepon')this.value='' ">
                            <input type="email" style='display:inline;' required value="email" onBlur="if(this.value=='')this.value='email'" onFocus="if(this.value=='email')this.value='' ">
                        </p>                     
                        <br>

                        <p><input type="text" style='display:inline;' required placeholder="alamat" onBlur="if(this.value=='')this.value='alamat'" onFocus="if(this.value=='alamat')this.value='' ">                     
                            <input type="text" style='display:inline;' required placeholder="kota" onBlur="if(this.value=='')this.value='kota'" onFocus="if(this.value=='kota')this.value='' ">
                        </p>                     
                        <br>

                        <p><input type="text" style='display:inline;' required placeholder="propinsi" onBlur="if(this.value=='')this.value='propinsi'" onFocus="if(this.value=='propinsi')this.value='' ">                     
                            <input type="text" style='display:inline;' required placeholder="kode pos" onBlur="if(this.value=='')this.value='kode pos'" onFocus="if(this.value=='kode pos')this.value='' ">
                        </p>                     
                        <br>
                    </div>

                    <p><input type="submit" value="Kirim"></p>
                </fieldset>
            </form>
        </div>
    </body>
</html>

