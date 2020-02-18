<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>ボ絛continue</title></head>
    <body>
    <%
        int i=1  ; 
        for(i=1;i<=100;i++){
            if(i==42){               
                out.println("iヘ玡单42┛菠ㄤそ计代刚<br> ");
                continue ; 
            }
            if((i%3==0)&&(i%7==0)){
                out.println(i+"琌3の7そ计<br>");
            }
        }
    %>
    </body>
</html>