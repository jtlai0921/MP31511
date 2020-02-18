<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>字串轉換</title></head>
    <body>
    <%
        String base = request.getParameter("base");
        String seq = request.getParameter("seq");
        int baseNum = Integer.parseInt(base);
        int seqNum  = Integer.parseInt(seq);
        int result = 1;
        
        for(int i=1;i<=seqNum;i++)
            result = result * baseNum ;
        out.println("<font size = 5>" + baseNum + " 的 " + seqNum + " 次方");
    %>
    <hr>
    <font size=5>計算結果:</font>
    <font size=5><%=result%></font>
    </body>
</html>
