<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    
    <% application.setAttribute("cname","tim") ; %>
    
    <%  out.println(application.getAttribute("cname")); %>
    ${applicationScope.cname}
    
    
    
    

    </body>
</html>
