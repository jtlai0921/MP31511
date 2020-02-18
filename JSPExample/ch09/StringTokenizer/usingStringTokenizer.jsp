<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.util.*"%>
<html>
    <head><title>字串換字元轉換</title></head>
    <body>
    <%request.setCharacterEncoding("Big5") ; %>
    輸入的訊息<br><br>
    <%
        String memo = request.getParameter("memo");
        StringTokenizer linemsg = new StringTokenizer(memo,"\n");
        
        while(linemsg.hasMoreTokens()){
            out.println(linemsg.nextToken() + "<br>");
        }
    %>
    </body>
</html>
