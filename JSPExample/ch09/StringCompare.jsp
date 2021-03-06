<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>字串比較方式</title></head>
    <body>
    <%
        String str1 = "I like milk!";
        String str2 = "I like strawberry!";
        out.println("<b>str1：" + str1 + "<br></b>");
        out.println("<b>str2：" + str2 + "<br><br></b>");

        out.println("str1的長度：" + str1.length() + "<br>");
        String msg = str1.equals(str2) ? "是":"否";
        out.println("str1與 str2 是否相等："+ msg + "<br>");

        if(str1.compareTo(str2) > 0)
            out.println("str1 大於 str2");
        else if(str1.compareTo(str2) == 0)
            out.println("str1 等於 str2");
        else
            out.println("str1 小於 str2<br>");

        msg = str1.startsWith("I like") ? "是":"否";
        out.println("str1 是否以 I like 開頭：" + msg + "<br>");
        msg = str1.endsWith("strawberry") ? "是":"否";
        out.println("str1 是否以 strawberry 結尾：" + msg + "<br>");
        msg = str1.regionMatches(true,2,str2,2,4) ? "是":"否";
        out.println("str1 與 str2 索引位置 2 " +
            "開始後 4 個字元所組成的部分字串	22 是否相等：" + msg);
        

    %>

    </body>
</html>
