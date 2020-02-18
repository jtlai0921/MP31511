<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<%!
class MathFunction{
    int DoAdd(int intFirst , int intSecond ){
        int intResult ;
        intResult =  intFirst + intSecond  ;
        return intResult ;
    }

    int DoSub(int intFirst , int intSecond ){
        int intResult ;
        intResult =  intFirst - intSecond  ;
        return intResult ;
    }
}
%>

<html>
    <head><title>建立類別</title></head>
    <body>
    <%
        MathFunction myMathFunction= new  MathFunction() ;
        int intR = myMathFunction.DoAdd(100,20) ;
        out.println("100加上20等於 " + intR + "<br>") ;
        intR = myMathFunction.DoSub(100,20) ;
        out.println("100減掉20等於 " + intR) ;
    %>
    </body>
</html>
