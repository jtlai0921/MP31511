<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>JSP Page</title></head>
    <body>

    <%request.setCharacterEncoding("Big5")  ;%>
    <%
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String tel = request.getParameter("tel");
    %>

    Hi , <%=name%> 您好 : <br>   <br>
    您輸入的個人資料如下<p>
    姓名：<%=name%><br>
    E-mail：<%=email%><br>
    電話：<%=tel%>

    </body>
</html>
