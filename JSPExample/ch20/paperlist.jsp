<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>

<%
    Object obj=session.getAttribute("access") ;    
    if (obj==null)
        session.setAttribute("access","n") ;         
   
    // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    // Connection con = DriverManager.getConnection("jdbc:odbc:paper");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch20\\db\\paper.mdb");
    Statement smt =con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String getpaperdata = "" ; 
    if(session.getAttribute("access").equals("y"))
        getpaperdata = "SELECT * FROM paper "  ; 
    else 
        getpaperdata = "SELECT * FROM paper WHERE  published = true "  ; 
        
    ResultSet paperrs =smt.executeQuery(getpaperdata) ;      
%>

<html>
    <head><title>JSP Page</title></head>
    <body>
<form method="post" action="papernew.jsp">
<table border="0" width="100%">
  <tr>
    <td ><b><font size="5">
     JSP 電子報</font></b>
    </td><td align='center'>
     <%if(session.getAttribute("access")=="n"){
         out.println(
            "<a href='paperorder.jsp'>[訂閱 | </a>"+
            "<a href='paperordercancel.jsp'>取消訂閱 | </a>"+
            "<a href='adminlogin.jsp'>登入]</a>") ;
     }else{     
          out.println("<a href='adminlogout.jsp'> 登出</a> ") ; 
     }%>
    </td>

  </tr>
  <tr>
    <td width="100%" colspan="2">
<table border="0" width="100%" cellspacing="1" cellpadding="0">
<tr>
  <td width="6%" bgcolor="#C0C0C0"><b>編號</b></td>
  <td width="76%" bgcolor="#C0C0C0"  colspan="2"><b>主題</b></td>
  
</tr>
<%while(paperrs.next()){  
    String paperid =paperrs.getString("paperid") ; 
    String papertitle =paperrs.getString("papertitle") ; 
%>
<tr>          
  <td width="6%" bgcolor="#E6E6E6"><%=paperid%></td>
  <td width="76%" bgcolor="#E6E6E6">  
   <a href="paperupdate.jsp?paperid=<%=paperid%>">    
   <%=papertitle%>
   </a>
  </td>     
  <%if(session.getAttribute("access").equals("y")){%>
  <td width="18%" bgcolor="#E6E6E6">            
    <%if(paperrs.getBoolean("published")){%>
    <a href="paperupdate.jsp?paperid=<%=paperid%>"> 閱讀</a>            
    <%}else{%>
    <a href="paperupdate.jsp?paperid=<%=paperid%>"> 編輯</a>｜
    <a href="paperedit.jsp?editType=published&paperid=<%=paperid%>"> 發行</a></td>     
    <%}%>
   <%}%>

</tr>
<%}%>
</table>
    </td>
  </tr>
  <tr>
    <td >
      <p align="center">
      <% if(session.getAttribute("access").equals("y")){ %>
      <input type="submit" value="新增電子報" name="newpaper">
      <%}%>
      </p>
    </td><td></td>
  </tr>
</table>
</form>
</body>
</html>
