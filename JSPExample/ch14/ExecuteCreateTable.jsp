<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>建立資料表</title></head>
<body>
<%
// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// Connection con =DriverManager.getConnection("jdbc:odbc:webData");
Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb");
Statement smt =  con.createStatement();
String sql = 
    "CREATE TABLE persondata1 " +
    "(ID char(10), Name char(10),Adrress char(20),Tel char(15))";
smt.execute(sql);
con.close();  
%>
</BODY>
</HTML>