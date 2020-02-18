<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>擲出例外</title></head>
    <body>
    <%
    
        try{
            throw new Exception("無論如何都會產生的例外錯誤…");
        }
        catch(Exception e){
            out.println(e.getMessage());
        }
    
    %>
    </body>
</html>
