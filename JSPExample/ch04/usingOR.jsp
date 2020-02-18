<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>OR 運算子</title></head>
    <body>
    
    <%
        int a =10   ;
        boolean blnOR = false ;
        out.println(" 變數 a=10 <BR>")  ;

        blnOR = a>10 | a==10  ;
        out.println("運算式 [a>10 | a==10] 結果 : " + blnOR) ;
    %>

    </body>
</html>
