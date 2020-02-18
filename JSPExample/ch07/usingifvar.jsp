<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
    <head><title>示範if標籤var屬性</title></head>
    <body>
    
    <c:if test="${4>2}" var="result"  />    
    
    <c:if test="${result==true}"  >
        <c:out value="${'4的確比2大'}" />   
    </c:if>
    

 
    </body>
</html>
