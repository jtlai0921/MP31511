<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>示範break</title></head>
    <body>

	<%
        int i;
	for(i=1;i<=100;i++){
            
	   if((i%3==0)&&(i%7==0))
	     out.println(i+"是3及7的公倍數<BR>");
	   if(i==50){
	     out.println("<BR> ");
	     out.println("i值目前等於50，中斷迴圈的執行!!<BR> ");
	     break  ;
	   }
	}
	out.println("<BR> ");
	out.println("for迴圈結束!!");
	%>

    </body>
</html>
