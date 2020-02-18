<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="com.jspsmart.upload.*" %>

<jsp:useBean id="theSmartUpload" scope="page" 
                    class="com.jspsmart.upload.SmartUpload"   />
<html>
    <head><title>上傳檔案作業</title></head>
    <body>
    <%
        theSmartUpload.initialize(pageContext) ; 
        theSmartUpload.setTotalMaxFileSize(10*1024*1024) ; 
        theSmartUpload.setAllowedFilesList("txt,htm") ; 
        theSmartUpload.upload() ; 
        String savePath = "C:\\saveDir\\" ;        
        int fileCount=theSmartUpload.save(savePath) ; 
        out.println("成功上傳案數目："+fileCount  ) ;         
        
        Files theFiles = theSmartUpload.getFiles() ; 
        out.println("<br>") ;
        out.println("=============================================<br>") ; 
        for(int i=0 ;i<theFiles.getCount();i++ ){   
            
            File theFile =theFiles.getFile(i) ;
            out.println("欄位名稱："+theFile.getFieldName()+"<br>") ; 
            out.println("檔案名稱："+theFile.getFileName()+"<br>") ; 
            out.println("副檔名："+theFile.getFileExt()+"<br>") ; 
            out.println("檔案路徑："+theFile.getFilePathName()+"<br>") ; 
            out.println("檔案型態："+theFile.getContentType()+"<br>") ; 
            out.println("檔案大小："+theFile.getSize()+"<br>") ; 
            out.println("<br>") ;          
            
            theFile.saveAs("C:\\saveDir\\CopyFile\\copy_"+
                    theFile.getFileName(),theSmartUpload.SAVE_AUTO) ; 
            out.println("複製一份檔案至"+
                    "C:\\saveDir\\CopyFile\\copy_"+theFile.getFileName()) ; 
            out.println("<br>") ;
            out.println("=============================================<br>") ; 
        } 
    %>    
    </body>
</html>
