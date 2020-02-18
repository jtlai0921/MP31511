<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>param的使用方式</title></head>
    <body>
    <%request.setCharacterEncoding("Big5");%>
    
    <jsp:useBean id="data" scope="page" class="bean.userData"/>
    <jsp:setProperty name="data" property="userName" param="myname"/>
    <jsp:setProperty name="data" property="userNum" param="phone"/>
    
    　使用者：<font color=blue>
        <jsp:getProperty name="data" property="userName"/>
    </font><br>
    分機號碼：<font color=blue>
        <jsp:getProperty name="data" property="userNum"/>
    </font><br>
   
    </body>
</html>
