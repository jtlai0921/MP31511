<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.util.*,java.text.*"%>
<html>
    <head><title>改變日期時間的輸出格式</title></head>
    <body>
    您好，現在時間為：<br>
    <%
        Date date = new Date();
        Locale locale = new Locale("zh","TW","");     
        DateFormat type =DateFormat.getDateTimeInstance(DateFormat.LONG,DateFormat.LONG,locale.TAIWAN);
        out.println(type.format(date));
    %>
    </body>
</html>
