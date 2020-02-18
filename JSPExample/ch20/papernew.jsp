<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%
if(session.getAttribute("access") !="y"){    
 response.sendRedirect("adminlogin.jsp") ;  
}
%>
<html>
    <head><title>新增電子報</title></head>
    <body>
<form method="post" action="paperedit.jsp">
<table border="0" width="100%">
  <tr>
    <td  colspan="2">
      <p align="left"><b><font size="4">新增電子報</font></b>
      <hr>
    </td>
  </tr>
  <tr>
    <td  valign="top" align="right">主題：     
    </td>
    <td ><input type="text" name="title" size="53">
    <input type="hidden" name="editType" value="new">
    </td>
  </tr>
  <tr>
    <td valign="top" align="right">內容：</td>
    <td  valign="top" align="left">
    <textarea rows="5" name="content" cols="52"></textarea></td>
  </tr>
  <tr>
    <td >
    </td>
    <td>
      <p><input type="submit" value="儲存"></p>
    </td>
  </tr>
</table>
</form>
    </body>
</html>
