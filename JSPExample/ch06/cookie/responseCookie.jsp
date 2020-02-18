<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>取得Cookie資料</title></head>
    <body>
    <%
        Cookie cookies[] = request.getCookies();
        int count = cookies.length;
        String name = "",sex = "",color = "";

        for(int i=0;i<count;i++)
            if(cookies[i].getName().equals("name"))
                name = cookies[i].getValue();
            else if(cookies[i].getName().equals("sex"))
                sex =cookies[i].getValue();
            else if(cookies[i].getName().equals("color"))
                color = cookies[i].getValue();
    %>
        <font color = "<%=color%>" size = "5"><%=name%></font>
        您好，以下是您的個人資料…<p>
    <%
        out.println("性別：<br>");
        if(sex.equals("M"))
            out.println("<img src = 'boy.jpg'>我是男生..<p>");
        else
            out.println("<img src = 'girl.jpg'>我是女生..<p>");
    %>
    </body>
</html>