<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>示範forEach</title></head>
    <body>
    <c:out value="底下列出1~10的整數"/> <br>
    <c:forEach var="theItem"      begin="1"   end="10" >
      
        ${theItem} ${","} 
    
    </c:forEach>
     
    <br><br>
    <c:out value="底下列出1~10的奇數"/> <br>
    <c:forEach var="theItemO"      begin="1"   end="10"  step="2" >
      
        ${theItemO} ${","} 
    
     </c:forEach>
     
    </body>
</html>
