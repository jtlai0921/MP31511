<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>使用GetParameterValues方法</title></head>
    <body>
    <%
        String select[] = request.getParameterValues("favorite");
        int count = 0;
        
        try {
            count = select.length;
        }catch(Exception e){
            response.sendRedirect("usingGetParameterValues.htm");
        }
        
        out.print("<font color = 'red'>您喜歡的程式語言為：</font><p>");
        for(int i = 0; i < count ; i++)
            out.print(select[i]+"<br>");
    %>

    </body>
</html>
