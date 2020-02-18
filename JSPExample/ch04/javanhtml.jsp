<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<html>
    <head><title>Java與HTML</title></head>
    <body>

    <table border="1" width="100%">
    <%
        for(int i=0;i<3;i++){
            out.println("<tr>") ; 
            for(int j=0;j<3;j++){
                out.println("<td width='33%'>"+i+","+j+"</td>") ; 
            }            
            out.println("</tr>") ; 
        }
    %>    
    </table>      

    </body>
</html>
