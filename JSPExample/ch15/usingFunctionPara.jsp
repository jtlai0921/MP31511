<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

    <%!
        String strMessage ;
    %>
    <%!
        void SayHello(String strName){
            strMessage = "新愛的 " + strName + " 您好 :  "  ;
            strMessage += "<br>"  ;
            strMessage += "歡迎使用JSP動態網頁新技術 !!"  ;
            strMessage += "<br>"  ;
            strMessage += "當您完成書中所有章節的學習課程，"  ;
            strMessage += "<br>"  ;
            strMessage += "您將具備撰寫JSP網頁的能力 "  ;
        }
    %>

<html>
    <head><title>傳遞參數</title></head>
    <body>

    <%
        SayHello("江同學") ;
        out.println(strMessage + "<BR>") ;
    %>
    
    </body>
</html>
