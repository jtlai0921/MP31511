<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>傳遞網頁轉向參數</title></head>
    <body>
    
      <c:redirect url="http://www.drmaster.com.tw/Bookinfo.asp" >
         <c:param name="BookID" value="BC30022" />     
      </c:redirect>

    </body>
</html>
