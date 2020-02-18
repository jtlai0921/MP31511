<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="comoreilly.oreilly.servlet.MultipartRequest"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<html>
    <head><title>上傳檔案作業-O'Reilly</title></head>
    <body>
    <%
     MultipartRequest theMultipartRequest = 
             new MultipartRequest(request,"C:\\saveDir\\CopyFile\\",10*1024*1024) ; 
     Enumeration theEnumeration = theMultipartRequest.getFileNames() ;
     int fileCount =0 ; 
     
     while(theEnumeration.hasMoreElements()){
         fileCount++ ; 
         String fieldName = (String)theEnumeration.nextElement() ; 
         String fileName =theMultipartRequest.getFilesystemName(fieldName) ;
         String contentType = theMultipartRequest.getContentType(fieldName) ;
         
         File theFile = theMultipartRequest.getFile(fieldName) ;        
         
         out.println("欄位名稱："+fieldName+"<br>") ;
         out.println("檔案名稱："+fileName+"<br>") ;
         out.println("檔案型態："+contentType+"<br>") ;  
         out.println("檔案路徑："+theFile.getAbsolutePath()+"<br>") ; 
         out.println("<br>") ;
         out.println("=============================================<br>") ;          
     }     
     out.println("成功上傳案檔案數目："+fileCount  ) ;     
     %>   
      
    </body>
</html>
