<%@page import = "java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<HTML>
<HEAD>
    <TITLE>>設定 application 資料</TITLE>
</HEAD>
<BODY>
   <%
        application.setAttribute("title","JSP2.X 動態網頁新技術") ; 
        application.setAttribute("author","榮欽科技") ; 
    %>
    
    <a href="usingApplication.jsp"> 顯示已設定之 application 資料內容 </a>
</BODY>
</HTML>

