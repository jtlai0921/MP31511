<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>JSP Page</title></head>
    <body>

    <%
        String strName ;
        strName = request.getParameter("txtName");
        out.println("Hello " +  strName + " 歡迎使用 JSP  動態網頁 !!") ;
    %>

    </body>
</html>
