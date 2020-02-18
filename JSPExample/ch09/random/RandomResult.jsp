<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.util.*"  %>
<html>
    <head><title>²q¼Æ¦r</title></head>
    <body>
    <%
        int num;
        String msg = "" ;
        String input = request.getParameter("value");
        int value = Integer.parseInt(input);
       
        if(session.getValue("num") == null){
            Random ran = new Random();
            num = ran.nextInt(100);
            session.putValue("num",String.valueOf(num));
        }
        else
            num = Integer.parseInt((String)session.getValue("num"));
        
        if(value == num){
            session.removeValue("num");
            msg = "0";
        }
        else if(value < num)
            msg = "1";
        else
            msg = "-1";
       
        response.sendRedirect("usingRandom.jsp?msg=" + msg );
    %>
    </body>
</html>
