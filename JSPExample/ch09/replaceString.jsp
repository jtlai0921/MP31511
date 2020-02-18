<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>﹃ず甧竚传</title></head>
    <body>
    <%
        String str1 = "     I Like Milk!";
        out.println("﹃" + str1 + "<br>");
        out.println("﹃じ计" + str1.length() + "<p>");
        String str2 = str1.concat("And Strawberry!");
        out.println("硈挡ㄤウ﹃穝﹃" + str2 + "<br>");
        String str3 = str1.toLowerCase();
        out.println("┮Τじ锣传Θ糶" + str3 + "<br>");
        String str4 = str1.toUpperCase();
        out.println("┮Τじ锣传Θ糶" + str4 + "<br>");
        String str5 = str1.trim();
        out.println("埃フじじ计" + str5.length());
    %>
    </body>
</html>
