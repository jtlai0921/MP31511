<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@include file = "includeFile.jsp"%>
<%@include file = "includeFile.html"%>
<html>
    <head><title>示範include指令</title></head>
    <body>
    <%
        MathFunction myMathFunction= new  MathFunction(100,20) ;
        int intR = myMathFunction.DoAdd() ;
        out.println("100加上20等於 " + intR + "<br>") ;
        intR = myMathFunction.DoSub() ;
        out.println("100減掉20等於 " + intR) ;
    %>
    </body>
</html>
