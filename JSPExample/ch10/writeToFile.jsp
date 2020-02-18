<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.io.*"%>
<html>
    <head><title>寫入檔案</title></head>
    <body>
    <%
        String thePath=request.getRealPath("/")+"\\ch10\\theFile" ; 
        File myFile = new File(thePath,"testFile.txt" )   ;
        myFile.createNewFile() ;
        FileWriter myFileWriter = new FileWriter(myFile) ;
        myFileWriter.write("這是範例 writeToFile.jsp 執行時所寫入的文字 !!");
        
        myFileWriter.flush() ; 
        myFileWriter.close() ;
        out.println("字串寫入檔案testFile.txt完成　!!");
    %>
    </body>
</html>
