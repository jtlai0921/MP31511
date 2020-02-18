<%@page import="java.lang.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>運用物件</title></head>
    <body>
        <%
            double dValue ;
            int intValue ;
            dValue = Math.pow(2,5) ;
            intValue = Math.abs(-12345) ;
            out.println("2 的 5 次方等於 " + dValue + "<br>") ;
            out.println("-12345 的絕對值等於 " + intValue + "<br>") ;
        %>
    </body>
</html>
