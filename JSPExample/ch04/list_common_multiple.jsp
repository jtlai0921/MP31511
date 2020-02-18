<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>示範 for 迴圈</title></head>
    <body>
	<%
            int i;
            for(i=1;i<=100;i++){
                
             if((i%3==0)&&(i%7==0))
                out.println(i+"是3及7的公倍數<br>");
            }
	%>
    </body>
</html>
