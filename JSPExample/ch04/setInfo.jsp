<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page language="java" %>
<%@ page info="info屬性設定測試字串" %>
<html>
<head>
<title>info屬性設定說明</title>
</head>

<body>
    <% out.println(getServletInfo()) ;%>
</body>

</html>
