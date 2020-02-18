<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>示範 out 標籤</title></head>
    <body>
    <c:out  value="這是<c:out>輸出的文字"   /><br>
    <c:out  value="這是<c:out>輸出的文字[escapeXml設為false]"
                 escapeXml="false"  /><br>           
    </body>
</html>