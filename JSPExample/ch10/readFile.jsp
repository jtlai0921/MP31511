<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.io.*"%>
<html>
    <head><title>┼ки·└╔о╫</title></head>
    <body>

    <%
        String thePath=request.getRealPath("/")+"\\ch10\\theFile" ; 
        File myFile = new File(thePath,"testFile.txt" )   ;
        char[] chrRead = new char[3600] ;
        FileReader myFileReader = new FileReader(myFile) ;
        myFileReader.read(chrRead) ;
        out.println(chrRead) ;
        
        myFileReader.close() ;
    %>

    </body>
</html>
