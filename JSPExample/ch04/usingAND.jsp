<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>AND 運算子</title></head>
    <body>

    <%
        int a =10   ;
        boolean blnOR = false ;
        out.println(" 變數 a=10 <BR>")  ;

        blnOR = a>10 & a==10  ;
        out.println("運算式 [a>10 & a==10] 結果 : " + blnOR) ;
        out.println("<BR><BR>") ;

        blnOR = a>10 && (a +=10) ==10  ;
        out.println
            ("運算式 [a>10 && (a +=10) ==10] 運算結果 : a 等於 " + a) ;
        out.println(" <BR>") ;

        blnOR = a>10 & (a +=10) ==10  ;
        out.println
            ("運算式 [a>10 & (a +=10) ==10] 運算結果 : a 等於 " + a) ;
        out.println(" <BR>") ;
%>

    </body>
</html>
