<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <% session.invalidate()  ;%>
    <% response.sendRedirect("paperlist.jsp")  ;%>
    </body>
</html>
