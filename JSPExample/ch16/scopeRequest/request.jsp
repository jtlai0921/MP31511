<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>request 型態的生命週期</title></head>
    <body>   
<jsp:useBean id="count" scope="request" class="bean.Counter"/> 
    	<font color="red">request.jsp</font><br><br>
	您是request.jsp網頁的第<font color=blue>
	<jsp:getProperty name="count" property="counter"  />
	</font>位參觀者<br>	
	<%   
            out.println(" 這是request.jsp網頁的計數器 !!");
	%>
    </body>
</html>
