<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.io.*"%>
<html>
    <head><title>列舉目錄與檔案結構</title></head>
    <body>
    <%
        String strB = "";
        String strBe = "";

        String thePath=request.getRealPath("/") ; 
        File myFile = new File(thePath)   ;
        File[] objFiles = myFile.listFiles() ;
        out.println(
                "列出目錄 "+thePath+" "+
                "底下的所有目錄及檔案（粗黑體部份為目錄，其餘為檔案）:" + 
                "<BR><HR>" );

        for(int i=0 ; i <objFiles.length ; i++){
            if (objFiles[i].isDirectory()){
                strB = "<B>" ;
                strBe = "</B>"  ;
            }else{
                strB = "" ;
                strBe = "" ;
            }
            out.println(strB + objFiles[i].toString() + strBe+ "<BR>");
        }
        out.println("<BR><HR>");
        out.println("目前目錄 "+thePath+" 的上層目錄為 :");
        out.println( myFile.getParentFile().toString() + "<BR><BR>");
        
        out.println("底下列出目前系統的根目錄："+ "<BR><HR>" );
        File[] myroot = File.listRoots() ;
        
        for(int i=0 ; i <myroot.length ; i++){
            out.println( myroot[i].toString() + "<BR>");
        }
    %>


    </body>
</html>
