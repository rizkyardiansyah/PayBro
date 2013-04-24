<%-- 
    Document   : index
    Created on : 21-Mar-2013, 10:00:43
    Author     : Fajar Nugroho
--%>



<%@ page import="javax.script.ScriptEngineManager, javax.script.ScriptEngine" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator</title>
    </head>
    <body>
        <h1>Log:<br/></h1>
        <%
            String log = "";            
            int length = 0;
            Cookie[] reqCookies = request.getCookies();
            
            String submit = request.getParameter("submitClear");
            if (submit != null && submit.equals("Clear Log")) {
                if(reqCookies != null && reqCookies.length != 1) {
                    length = reqCookies.length;
                    for (int ii = 0; ii < length; ++ii) {
                        reqCookies[ii].setMaxAge(0);                        
                        response.addCookie(reqCookies[ii]);
                    }
                }   
                out.println("No Log");
            } else if(reqCookies != null && reqCookies.length != 1) {
                length = reqCookies.length;
                for (int ii = 1; ii < length; ++ii) {      
                    out.print(reqCookies[ii].getValue());
                    out.print("</br>");
                }
            } else {                
                out.println("No Log");
            }
            
        %>
        <form action="index.jsp" method="post">
             <input type="submit" name="submitClear" value="Clear Log">
        </form>
        <h1>Calculate:<br/></h1>
        <form action="index.jsp" method="post">
            <input type="text" name="expression" value="">
            <input type="submit" name="submit" value="Calculate">
        </form>
        <h1>Result:<br/></h1>        
        <%
            if (request.getParameter("submit") != null && 
                    !request.getParameter("expression").equals("")) {
                try {
                    ScriptEngineManager mgr = new ScriptEngineManager();
                    ScriptEngine engine = mgr.getEngineByName("JavaScript");
                    String exp = request.getParameter("expression");
                    String ans = "";
                    if (exp != null) {
                        ans = engine.eval(exp).toString();
                        out.println(ans);
                    }
                    Cookie logCookie = new Cookie(""+length, exp+" = "+ans);
                    response.addCookie(logCookie);                
                }  catch (Exception e) {
                    out.println("Wrong Expression");
                }
            }
        %>
    </body>
</html>
