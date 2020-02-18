<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>JSP Page</title></head>
    <body>

     <p align="center"><b><font size="7">
     <img src=<c:url value="http://www.drmaster.com.tw/images/index_01.jpg" />  /> 
     <br>
     <a href=<c:url value="http://www.drmaster.com.tw/Bookinfo.asp" >  
                <c:param name="BookID" value="BC30022" />
            </c:url>
      >
       資訊科技概論
     </a>

     </font></b></p>
     
    </body>
</html>
