<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>合併字串</title></head>
    <body>
    <%
        String strFirstString = "JSP" ;
        String strDotString = "，" ;
        String strSecondString = "Java 的Web平台互動式網頁技術!!" ;

        String strJoin = strFirstString + strDotString + strSecondString ;
        out.println("<br>strFirstString : " + strFirstString ) ;
        out.println("<br>strDotString : "+strDotString) ;
        out.println("<br>strSecondString : "+strSecondString) ;
        out.println("<br>strJoin : ") ;
        out.println( strJoin) ;
    %>
    </body>
</html>
