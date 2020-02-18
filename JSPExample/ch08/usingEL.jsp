<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>使用 EL</title></head>
    <body>
   <%
        application.setAttribute("firstNumber","200") ; 
        application.setAttribute("secondNumber","400") ;      
    %>
    
    輸出數值100：${100}<br>
    輸出變數firstNumber：${firstNumber}<br>      
    輸出變數firstNumber：${secondNumber}<br>   
    輸出變數firstNumber+firstNumber：${secondNumber+firstNumber}<br>  
    
    輸出字串firstNumber：${'firstNumber'}<br>  
    輸出字串firstNumber：${'secondNumber'}<br>   
    
    </body>
</html>
