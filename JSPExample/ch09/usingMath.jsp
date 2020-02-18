<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>Math 類別</title></head>
    <body>
    您輸入的數字為
    <%
    String input = request.getParameter("value");
    double value = Double.parseDouble(input);
    %>
    <font color = "red" size = "5"><%=value%></font>
    <hr>
    四捨五入後的整數值：<%=Math.round(value)%><br>
    無條件進位的整數值：<%=Math.ceil(value)%><br>
    無條件捨去的整數值：<%=Math.floor(value)%><br>
    最接近的整數值　　：<%=Math.rint(value)%><br>
    絕對值　　　　　　：<%=Math.abs(value)%><br>
    平方根　　　　　　：<%=Math.sqrt(value)%><br>

    </body>
</html>
