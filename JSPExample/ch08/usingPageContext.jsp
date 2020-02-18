<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>引用 pageContext</title></head>
    <body>
    請求URL:${pageContext.request.requestURL}<br>
    網頁路徑:${pageContext.request.contextPath}<br>
    
    通訊協定：${pageContext.request.protocol}<br>
    
    使用者名稱：${pageContext.request.remoteUser} <br>
    使用者位址：${pageContext.request.remoteAddr}<br>
    
   
    session ID：${pageContext.session.id}<br>    
    </body>
</html>
