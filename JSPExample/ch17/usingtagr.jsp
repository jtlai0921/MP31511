<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="mytag"  tagdir="/WEB-INF/tags/" %>
<html>
    <head><title>JSP Page</title></head>
    <body>

    <mytag:math firstNumber="100"  secondNumber="50" >
        100+50 = ${add} <br>
        100-50 = ${sub} <br>
        100*50 = ${multiply} <br>
        100/50 = ${divide} <br>         
    </mytag:math >
       

    </body>
</html>
