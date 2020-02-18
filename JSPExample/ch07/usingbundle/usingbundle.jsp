<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
    <head><title>JSP Page</title></head>
    <body>
      <fmt:setBundle basename="theResource"  />

      <fmt:bundle basename="theResource">
      
      <p><b><font size="7"><fmt:message  key="company" /></font></b></p>

      <ul>   
      <li><fmt:message  key="about1" /></li>   <br><br>  
      <li><fmt:message  key="about2" /></li>   <br><br><br><br>   
      </ul>   
      <fmt:message  key="address" />   <br> 
      <fmt:message  key="tel" />   <br>  
    
      </fmt:bundle>     

    </body>
</html>
