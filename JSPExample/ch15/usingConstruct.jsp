<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%!
class MathFunction{

    int intFirst ;
    int intSecond ;

    public MathFunction(int pintFirst , int pintSecond ){
        intFirst =  pintFirst   ;
        intSecond =  pintSecond ;
    }
    int DoAdd(){
        int intResult ;
        intResult =  intFirst + intSecond  ;
        return intResult ;
    }

    int DoSub( ){
        int intResult ;
        intResult =  intFirst - intSecond  ;
        return intResult ;
    }
}
%>
<html>
    <head><title>運用建構式</title></head>
    <body>
    <%
        MathFunction myMathFunction= new MathFunction(100,20) ;
        int intR = myMathFunction.DoAdd() ;
        out.println("100加上20等於 " + intR + "<br>") ;
        intR = myMathFunction.DoSub() ;
        out.println("100減掉20等於 " + intR) ;        
    %>
    </body>
</html>
