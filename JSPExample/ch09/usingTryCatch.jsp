<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>使用try-catch子句</title></head>
    <body>

    <%
        try{
            String input = request.getParameter("input");
            int value = Integer.parseInt(input);
            out.print("您輸入的數字為："+value);
        }
        catch(NumberFormatException e){
            out.println("這一段是catch子句所回傳的錯誤訊息 !! <br>") ;
            out.println("-------------------------------------------<br>") ;
            out.println("網址列的參數不正確 !! <br>") ;
            out.println("請在參數列輸入整數值 !! <br>") ;
        }
    %>

    </body>
</html>
