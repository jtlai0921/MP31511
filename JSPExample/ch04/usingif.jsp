<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>if 判斷式</title></head>
    <body>

    <%
        int a =10   ;
        out.println(" 變數a=10 <BR>")  ; 
     
        if (a>10 | a==10){
            out.println("變數a=10 或是(|) A>10 的條件式成立 !!") ;
            out.println("<BR>")  ;
        }

        out.println("運算結束") ;       
    %>

    </body>
</html>
