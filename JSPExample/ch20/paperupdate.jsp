<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<%
 // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
 //  Connection con = DriverManager.getConnection("jdbc:odbc:paper");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch20\\db\\paper.mdb");
 Statement smt =con.createStatement
    (ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_READ_ONLY);
 String getpaperdata = 
        "SELECT * FROM paper WHERE paperid =" + 
        request.getParameter("paperid") ; 
 ResultSet paperrs =smt.executeQuery(getpaperdata) ;  
 paperrs.next() ; 
%>

<html>
<head><title>電子報內容</title></head>
<body>
<form method="POST" action="paperedit.jsp">
<table border="0" width="100%">
  <tr>
    <td  colspan="2" >
      <p align="left"><b><font size="4">編輯電子報</font></b>
      <hr>
    </td>     
  </tr>
  <tr>
    <td  valign="top" align="right">編號：     
    </td>
    <td ><input type="text" name="paperid" size="10"  
                value = <%=request.getParameter("paperid")%>>       
    </td>
  </tr>
  <tr>
    <td  valign="top" align="right">主題：     
    </td>
    <td ><input type="text" name="title"   size="80"  
                value ='<%=paperrs.getString("papertitle")%>'>
    <input type="hidden" name="editType" value="update">    
    </td>
  </tr>
  <tr> 
    <td valign="top" align="right">內容：</td>
    <td  valign="top" align="left">
    <textarea rows="15" name="content" cols="80">
<%=paperrs.getString("papercontent")%>
    </textarea></td>
  </tr>
  <tr>
    <td >
    </td>
    <td>    
    <%if(session.getAttribute("access")=="y" &&
         paperrs.getBoolean("published")!=true){%>
     <input type="submit" value="儲存">
    <%}%>
    <a  href="paperlist.jsp"  > 回電子報清單</a>
    </td>
  </tr>
</table>    
</form>
</body>
</html>
