<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>request 型態的生命週期</title></head>
    <body>
    <jsp:useBean id="count" scope="request" class="bean.Counter"/>
    <font color="red">範圍：request</font><br>
    
        您是本站第<font color=blue>
            <jsp:getProperty name="count" property="counter"/>
        </font>位參觀者
        <jsp:forward page="request.jsp"/>
        


    </body>
</html>
