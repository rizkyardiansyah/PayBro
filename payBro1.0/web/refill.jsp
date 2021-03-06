<%-- 
    Document   : refill
    Created on : May 12, 2013, 1:14:27 PM
    Author     : Ardi
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">

        <title>PayBro - Isi Kredit</title>

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
                    <li class="active"><a href="refill.jsp" title="Isi Kredit">Isi Kredit</a></li>
                    <li><a href="transfer.jsp" title="Transfer Kredit">Transfer Kredit</a></li>
                    <li><a href="edit.jsp" title="Edit Akun">Edit Akun</a></li>
                    <li><a href="logout.jsp" title="Keluar">Keluar</a></li>
                </ul>
            </nav>
            
            <%--<%
                String temp = request.getParameter("username");
                if (!temp.equals("")) {
                %>
            
                <jsp:useBean id="newAccount" class="pb.javabean.AccountBean" />

                <!-- simpan data-data dari form ke objek 'newAccount' -->
                <jsp:setProperty name="newAccount" property="username" param="username" />
                <jsp:setProperty name="newAccount" property="password" param="password" />

                <!-- construct objek 'data' -->
                <jsp:useBean id="data" class="pb.javabean.AccountDataBean" scope="session" />
                <jsp:getProperty name="newAccount" property="username"/>
                <jsp:getProperty name="newAccount" property="password"/> 
                <%
           
                data.insertAccount(newAccount);
                //response.sendRedirect("PBServlet");
            }%>--%>
            
        </div> 
        
        <div class="reload">
            <form action="javascript:void(0);" method="get">
                <fieldset>
                    <div class="title">
                        Masukkan <i>Reload Code</i>: &nbsp; <input type="text" required value="reload code" onBlur="if(this.value=='')this.value='reload code'" onFocus="if(this.value=='reload code')this.value='' "> <!-- JS because of IE support; better: placeholder="Reload Code" --> <br><br>
                    </div>
                    <p><input type="submit" value="Kirim"></p>
                </fieldset>
            </form>
        </div>
    </body>
</html>