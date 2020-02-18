<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>設定JavaBean屬性</title></head>
    <body>
    
   <jsp:useBean id="data" scope="page" class="bean.userData"/>
   <jsp:setProperty name="data" property="userName" value="陳威勳"/>
    
   <%	data.setUserNum("105"); 	%>
    
    使用者：<font color=blue>
    <jsp:getProperty name="data" property="userName"/>
    </font><br>
    分機號碼：<font color=blue>
    <jsp:getProperty name="data" property="userNum"/>
    </font><br>      

    </body>
</html>
