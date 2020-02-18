<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

    <%!
        String strMessage ;
    %>

    <%!
        void sayHello(){
        strMessage = "新愛的讀者您好 :  "  ;
        strMessage += "<br>"  ;
        strMessage += "歡迎使用JSP動態網頁新技術 !!"  ;
        strMessage += "<br>"  ;
        strMessage += "當您完成書中所有章節的學習課程，"  ;
        strMessage += "<br>"  ;
        strMessage += "您將具備撰寫JSP網頁的能力 "  ;
        }
    %>

<html>
    <head><title>運用函式</title></head>
    <body>    
    <%
        out.println("第一次呼叫 SayHello ：<BR>") ;
        sayHello() ;
        out.println(strMessage + "<BR>") ;
    %>

    <%
        out.println("<BR>") ;
        strMessage = "strMesszge 是一個全域變數 " ;
        out.println(strMessage + "<BR>") ;
    %>

    <%
        out.println("<BR>") ;
        out.println("第二次呼叫 SayHello ：<br>") ;
        sayHello() ;
        out.println(strMessage) ;
    %>
    </body>
</html>
