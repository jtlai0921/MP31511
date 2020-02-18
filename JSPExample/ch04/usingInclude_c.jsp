<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
<head>
<title>示範include指令</title>
</head>

<body>	
        <%@ include file="includeFile/include2.inc" %> 
	<% out.println("usingInclude.jsp網頁本身的內容 !! ") ;%>
</body>

</html>
