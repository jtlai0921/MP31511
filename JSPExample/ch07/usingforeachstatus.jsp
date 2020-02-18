<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <%
        String[] theArray = {"1","2","3","4","5","6","7","8","9","10"} ; 
        request.setAttribute("itemObjects",theArray) ; 
    %>

    <c:out value="底下列出1~10的奇數"/> <br>
    <c:forEach items="${itemObjects}" var="theItemO" varStatus="thevs" begin="0"  end="9"  step="2" >
      
        ${theItemO}
            索引值：${thevs.index}　
            計數：${thevs.count}　
            第一筆(true/false)：${thevs.first}　
            最後一筆(true/false)：${thevs.last}
        <br>
    
     </c:forEach>

    </body>
</html>