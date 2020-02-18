<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>操作緩衝區</title></head>
    <body>

        目前緩衝區大小：<%= response.getBufferSize()%> <BR>
        重設緩衝區大小為 16384  <% response.setBufferSize(16384);%> <BR>
        重設之後的緩衝區大小：<%= response.getBufferSize()%> <BR>  <BR>

        是否已將緩衝區的資料寫出　:　<%=response.isCommitted()%><BR>
        呼叫　flushBuffer　清空緩衝區....　<%response.flushBuffer() ; %><BR>
        是否已將緩衝區的資料寫出　:　<%=response.isCommitted()%><BR>

    </body>
</html>
