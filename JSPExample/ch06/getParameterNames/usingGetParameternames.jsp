<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="java.util.*"%>

<html>
    <head><title>JSP Page</title></head>
    <body>

    <%
        Enumeration varobj = request.getParameterNames();
        int count = 0;
        out.println("取得的變數名稱為：");

        while(varobj.hasMoreElements()){
            count++;
            out.println("<");
            out.println(varobj.nextElement());
            out.println(">");
        }

        out.println("<p>共傳遞 " + count + " 筆變數資料");
    %>

    </body>
</html>
