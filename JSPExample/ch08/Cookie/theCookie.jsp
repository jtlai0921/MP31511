<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>³]©wCookie</title></head>
    <body>
    <%
            Cookie nameCookie = new Cookie("cname", "sean");
            Cookie sexCookie = new Cookie("sex","male");
            response.addCookie(nameCookie);
            response.addCookie(sexCookie);
    %>
    <a href=usingCookie.jsp>ÀËµøCookie</a>

    </body>
</html>
