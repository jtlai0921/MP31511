<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="com.jspsmart.upload.*" %>

<jsp:useBean id="theSmartUpload" scope="page" class="com.jspsmart.upload.SmartUpload"   />
<html>
    <head><title>上傳檔案作業</title></head>
    <body>
    <%
        theSmartUpload.initialize(pageContext) ; 
        theSmartUpload.setTotalMaxFileSize(5*1024*1024) ; 
        theSmartUpload.upload() ; 
        String savePath = "C:\\saveDir\\" ;
        
        int fileCount=theSmartUpload.save(savePath) ; 
        out.println("成功上傳案數目："+fileCount  ) ; 
    %>    
    </body>
</html>
