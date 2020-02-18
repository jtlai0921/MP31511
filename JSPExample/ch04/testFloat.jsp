<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>JSP Page</title></head>
    <body>

    <%
        double dblVar ;
        dblVar = 123.45 ;
        out.println("變數 dblVar = " + dblVar) ;
        dblVar = 123 ;
        out.println("變數 dblVar = " + dblVar) ;
    %>

    </body>
</html>
