<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page errorPage = "error.jsp"%>
<HTML>
<HEAD>
    <TITLE>>設定例外處理的網頁</TITLE>
</HEAD>
<BODY>
  <%
    String name = request.getParameter("name");
    if(name == null)
     throw new Exception("");
    else
  %>
<font color = "blue" size = "5"><%=name%></font>，您好!


</BODY>
</HTML>

