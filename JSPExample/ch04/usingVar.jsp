<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
	<%
	int intFirstNumber = 10  ;
	int intSecondNumber = 20 ;
	int intADD ;
	intADD = intFirstNumber + intSecondNumber ;
	out.println(
	  intFirstNumber + "+" +
	  intSecondNumber + "=" +  intADD ) ;
	%>
    </body>
</html>
