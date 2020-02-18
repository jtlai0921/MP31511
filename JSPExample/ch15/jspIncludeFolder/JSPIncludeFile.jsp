<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <%       
        String name = request.getParameter("name");
        String age = request.getParameter("age");
    %>
    <font size = "5">
     ©m¦W¡G<%=name%>
    </font>  
    <br>
    <font size = "5">
     ¦~ÄÖ¡G<%=age%>
    </font>   
    </body>
</html>
