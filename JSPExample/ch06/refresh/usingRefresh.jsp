<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>JSP Page</title></head>
    <body>

    <%! int count = 0 ;%>
    <%
        if(count == 9)
        count = 0;
        response.setHeader("Refresh","1");
        count++;
    %>
    
    <img src="<%=count%>.jpg"><br>
    <font color = "green" size = "5">這是第 <%=count%> 張圖片</font>
    
    </body>
</html>
