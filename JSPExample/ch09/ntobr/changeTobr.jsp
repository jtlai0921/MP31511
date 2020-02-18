<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>字元換行</title></head>
    <body>
    <%request.setCharacterEncoding("big5");%>
    輸入的訊息：<br><br>
    <%
        String memo = request.getParameter("memo");
        int index = 0;
        while((index = memo.indexOf("\n")) != -1)
           memo = memo.substring(0,index) + 
                  "<br>" + memo.substring(index+1);
        out.println(memo);
    %>
    </body>
</html>
