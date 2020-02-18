<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>示範items</title></head>
    <body>
    <%
        String[] theArray = {"1","2","3","4","5","6","7","8","9","10"} ; 
        request.setAttribute("itemObjects",theArray) ; 
    %>

    <c:out value="底下列出陣列物件的內容"/> <br>
    <c:forEach   items="${itemObjects}"  var="theItem"  begin="0"  end="9" >
      
        ${theItem} ${","} 
    
    </c:forEach>
    <br>
    <c:out value="底下列出1~10的奇數"/> <br>
    <c:forEach items="${itemObjects}" var="theItemO"  begin="0"  end="9"  step="2" >
      
        ${theItemO} ${","} 
    
     </c:forEach>

    </body>
</html>
