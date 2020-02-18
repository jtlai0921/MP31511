<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.io.*"%>
<html>
    <head><title>運用File物件</title></head>
    <body>
 
    <%
        String thePath=request.getRealPath("/")+"\\ch10\\theFile" ; 
        File myDir = new File(thePath)   ;
        File myFile = new File(thePath,"testFile.txt" )   ;
        File mynotExistFileFile = new File(thePath,"notExistFile.txt" )   ;
        out.println(
                "目錄 "+thePath+ " 是否存在：" + 
                myDir.exists() + "<BR>"  );
        out.println(
                "檔案 "+thePath+ "\\testFile.txt 是否存在：" + 
                myFile.exists() + "<BR>" );
        out.println("檔案 "+thePath+ "\\notExistFile.txt 是否存在：" +
        mynotExistFileFile.exists() + "<BR>"+ "<BR>" );

        out.println("檔案 "+thePath+ "\\testFile.txt 是否可讀取：" + 
        myFile.canRead() + "<BR>" );
        out.println("檔案 "+thePath+ "\\testFile.txt 是否可寫入：" + 
        myFile.canWrite() + "<BR>" );
    %>

    </body>
</html>
