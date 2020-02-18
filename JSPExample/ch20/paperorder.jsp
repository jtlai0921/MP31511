<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<%
    // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    // Connection con = DriverManager.getConnection("jdbc:odbc:paper");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch20\\db\\paper.mdb");
    Statement smt =con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String getpaperdata = "" ;    
    getpaperdata = "SELECT  COUNT(*)  AS  cc FROM list "  ;         
    ResultSet paperrs =smt.executeQuery(getpaperdata) ; 
    paperrs.next() ;     
%>
<html>
    <head><title>訂閱電子報</title></head>
    <body>

    <table border="0" width="100%">
      <tr>
        <td width="100%"><b><font size="5">訂閱電子報</font></b>
        <a href='paperlist.jsp'>[瀏覽]</a>
          <hr>
        </td>
      </tr>
      <tr>
        <td width="100%">
          <form method="POST" action="orderCheck.jsp">

            訂戶名稱：<input type="text" name="nameorder" size="20"><br>
            電子郵件：<input type="text" name="mailorder" size="30"><br>           
            <br>
                <input type="submit" value="訂閱" name="order"></p>
          </form>
        </td>
      </tr>
      <tr>
        <td width="100%"><b>已訂閱數：<%=paperrs.getString("cc")%></b></td>
      </tr>
      <tr>
        <td width="100%"></td>
      </tr>
      <tr>
        <td width="100%"></td>
      </tr>
    </table>
    </body>
</html>
