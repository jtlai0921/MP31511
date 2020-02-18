<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>•‹Ωd catch º–≈“</title></head>
    <body>
        <c:catch var="execption">
        <%
            int[]  a = {1,2,3} ; 
            int  b= 0  ; 
            for(int i=0 ; i<4 ; i++){
                b+=a[i]  ;                
            }
        %>
        </c:catch>        
        <c:out value ="${execption}" />
    </body>
</html>
