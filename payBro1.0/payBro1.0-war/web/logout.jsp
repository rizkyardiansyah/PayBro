<%-- 
    Document   : logout
    Created on : May 12, 2013, 1:17:02 PM
    Author     : Ardi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.invalidate();
    response.sendRedirect("index.jsp");
%>
