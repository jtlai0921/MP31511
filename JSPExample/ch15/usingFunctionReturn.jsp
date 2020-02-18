<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<%!
    String sayHello(String strName){
        String strMessage ;
        strMessage = "新愛的 " + strName + " 您好 :  "  ;
        strMessage += "<br>"  ;
        strMessage += "歡迎使用JSP動態網頁新技術 !!"  ;
        strMessage += "<br>"  ;
        strMessage += "當您完成書中所有章節的學習課程，"  ;
        strMessage += "<br>"  ;
        strMessage += "您將具備撰寫JSP網頁的能力 "  ;
        return strMessage    ;
       
    }
%>

<html>
    <head><title>函式回傳值</title></head>
    <body>
    <%
        String strReturn ;
        strReturn = sayHello("江同學")  ;
        out.println(strReturn + "<BR>") ;
    %>
    </body>
</html>
