<%-- 
    Document   : log_transaction
    Created on : May 12, 2013, 1:28:42 PM
    Author     : Ardi
--%>

<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta charset="utf-8">

        <title>PayBro - Log Transaksi</title>

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
                    <li class="active"><a href="log_transaction.jsp" title="Riwayat Transaksi">Riwayat Transaksi</a></li>
                    <li><a href="refill.jsp" title="Isi Kredit">Isi Kredit</a></li>
                    <li><a href="transfer.jsp" title="Transfer Kredit">Transfer Kredit</a></li>
                    <li><a href="edit.jsp" title="Edit Akun">Edit Akun</a></li>
                    <li><a href="logout.jsp" title="Keluar">Keluar</a></li>
                </ul>
            </nav>
        </div>  
        
        <div class="history">
            <form action="javascript:void(0);" method="get">
                <fieldset>
                    <div class="history_title">
                        Riwayat Transaksi 
                    </div>
                    <table id="rounded-corner" summary="2007 Major IT Companies' Profit">
                        <thead>
                            <tr>
                                <th scope="col" class="rounded-company">Waktu</th>
                                <th scope="col" class="rounded-q1">Nominal</th>
                                <th scope="col" class="rounded-q2">Dari</th>
                                <th scope="col" class="rounded-q3">Tujuan</th>
                                <th scope="col" class="rounded-q4">Keterangan</th>
                            </tr>
                        </thead>
                        <tfoot>
                            <tr>
                                <td class="rounded-foot-left">
                                    <a style="color: #135d84;
                                    font-family: Lucida Sans Unicode, Lucida Grande, Sans-Serif;
                                    font-size: 13px;" href="#">Prev</a>
                                </td>
                                <td colspan="3" class="rounded-q2"></td>
                                <td class="rounded-foot-right" style="text-align: right;">
                                    <a style="color: #135d84;
                                    font-family: Lucida Sans Unicode, Lucida Grande, Sans-Serif;
                                    font-size: 13px;" href="#">Next</a>
                                </td>
                            </tr>
                        </tfoot>
                        <tbody>
                            <tr>
                                <td>19:01:23 - 23/5/2013</td>
                                <td>20.3</td>
                                <td>30.5</td>
                                <td>23.5</td>
                                <td>23.5</td>
                            </tr>
                            <tr>
                                <td>9:15:44 - 23/5/2013</td>
                                <td>50.2</td>
                                <td>40.63</td>
                                <td>45.23</td>
                                <td>23.5</td>
                            </tr>
                            <tr>
                                <td>20:07:00 - 25/4/2013</td>
                                <td>25.4</td>
                                <td>30.2</td>
                                <td>23.5</td>
                                <td>33.3</td>
                            </tr>
                            <tr>
                                <td>6:45:00 - 7/2/2013</td>
                                <td>20.4</td>
                                <td>15.6</td>
                                <td>23.5</td>
                                <td>22.3</td>
                            </tr>
                        </tbody>
                    </table>

                </fieldset>
            </form>
        </div>
    </body>
</html>