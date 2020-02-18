<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>網頁重新導向</title></head>
    <body>
    <%
        String view = request.getParameter("view");
        if(view.equals("rabbit"))
            response.sendRedirect("picPage/rabbit.html");
        else if(view.equals("penguin"))
            response.sendRedirect("picPage/penguin.html");
        else if(view.equals("dog"))
            response.sendRedirect("picPage/dog.html");
    %>
    </body>
</html>
