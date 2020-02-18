<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>猜數字</title></head>
    <body>
    <%request.setCharacterEncoding("Big5");%>    
    猜猜看，請輸入介於 0~100 之間的數..
    <hr>
    <form action = "RandomResult.jsp" method = "post">
    輸入數字：<input type=text name="value" >
     <input type=submit  value='送出'>
    <hr>
    
    <% if  (request.getParameter("msg") != null) {
            int intMsg =Integer.parseInt( request.getParameter("msg"));
            String strMessage = "" ;
            switch(intMsg) {
                case 0:
                    strMessage = "您猜對了!!" ;
                    break ;
                case -1:
                    strMessage = "再小一點!!" ;
                    break ;
                case 1:
                    strMessage = "再大一點!!" ;
                    break ;
            }
            out.println(strMessage);
        }
    %>
    </form>
    </body>
</html>
