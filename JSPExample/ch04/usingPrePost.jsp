<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>前置與後置運算子</title></head>
    <body>
    
    <%
        int intA = 0 ;
        int intB = 5 ;
        out.println("intA =" + intA + "," +
            "intB =" + intB + "<BR>" )  ;
        intA = ++intB ;
        out.println("intA = ++intB : intA =" +
            intA + "," + "intB =" + intB ) ;
        out.println("<BR>" ) ;

        int intC = 0 ;
        int intD = 10 ;
        out.println("intC =" + intC + "," +
            "intD =" + intD + "<BR>" )  ;
        intC = intD++  ;
        out.println("intC = intD++ : intC =" +
            intC + "," + "intD =" + intD ) ;  
    %>

    </body>
</html>
