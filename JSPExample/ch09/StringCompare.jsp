<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>﹃ゑ耕よΑ</title></head>
    <body>
    <%
        String str1 = "I like milk!";
        String str2 = "I like strawberry!";
        out.println("<b>str1" + str1 + "<br></b>");
        out.println("<b>str2" + str2 + "<br><br></b>");

        out.println("str1" + str1.length() + "<br>");
        String msg = str1.equals(str2) ? "琌":"";
        out.println("str1籔 str2 琌单"+ msg + "<br>");

        if(str1.compareTo(str2) > 0)
            out.println("str1  str2");
        else if(str1.compareTo(str2) == 0)
            out.println("str1 单 str2");
        else
            out.println("str1  str2<br>");

        msg = str1.startsWith("I like") ? "琌":"";
        out.println("str1 琌 I like 秨繷" + msg + "<br>");
        msg = str1.endsWith("strawberry") ? "琌":"";
        out.println("str1 琌 strawberry 挡Ю" + msg + "<br>");
        msg = str1.regionMatches(true,2,str2,2,4) ? "琌":"";
        out.println("str1 籔 str2 ま竚 2 " +
            "秨﹍ 4 じ┮舱Θ场だ﹃	22 琌单" + msg);
        

    %>

    </body>
</html>
