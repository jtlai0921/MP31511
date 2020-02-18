<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
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
    </body>
</html>
