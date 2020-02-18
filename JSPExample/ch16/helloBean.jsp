<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<jsp:useBean id='objSayHello' scope='application' class='bean.SayHello' />
<html>
    <head><title>示範 JavaBean</title></head>
    <body>
   
    <%request.setCharacterEncoding("Big5");%>
    <%
        String strMessage;
        strMessage = objSayHello.SayHello("歡迎來到JavaBean的第一個範例") ;
        out.println(strMessage) ;
     %>

    </body>
</html>
