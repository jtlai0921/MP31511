<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>示範 forTokens 標籤</title></head>
    <body>    
   
    <c:out value="原始字串： JavaServer Pages Standard Tag Library"  />
    <br>
    <c:out value="解析字串：" />
    <c:forTokens var="theItem" items="JavaServer Pages Standard Tag Library" delims=" " >
    
        ${theItem}${"-"}
    
    </c:forTokens>
       
    </body>
</html>
