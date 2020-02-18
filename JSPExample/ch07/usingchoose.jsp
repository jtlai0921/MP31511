<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head><title>示範choose</title></head>
    <body>
    
    <c:choose>
    <c:when  test="${1 > 2}" >
        ${"數值 1 大於 2 !!"}     
    </c:when>
    
    <c:otherwise>
        ${"數值 1 小於 2 !!"}           
      
    </c:otherwise>    
    </c:choose>

    </body>
</html>
