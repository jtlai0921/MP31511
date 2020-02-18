<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>while 敘述</title></head>
    <body>
    <%
       int i = 0;
	
       while(i<=100){            
             i++ ;
            if((i%3==0)&&(i%7==0))
            out.println(i+"是3及7的公倍數<br>");
       }
    %>
    </body>
</html>
