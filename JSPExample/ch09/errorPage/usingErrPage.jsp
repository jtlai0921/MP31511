<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page  errorPage="errorp.jsp" %>
<html>
    <head><title>JSP Page</title></head>
    <body>
     <%
String name = request.getParameter("name");
if(name == null)
throw new Exception("請於網址列後附上資料字串");
else
%>

<font color = "blue" size = "5"><%=name%></font>，您好!

    </body>
</html>
