<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>�s�W���</title></head>
    <body>

    <%
       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       Connection con = DriverManager.getConnection("jdbc:odbc:webData");
// Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb");
        Statement smt =  con.createStatement();
        
        out.println("�s�W��ƪ� people �� webData <br>");
String sql = 
    "CREATE TABLE people" +
    "(name varchar(10),eMail varchar(100))";
       smt.executeUpdate(sql);

        
        //out.println("�s�W�@�Ӥ�r���A�������� name�A���׵��� 10 <br>");
       // out.println("�s�W�@�Ӥ�r���A�������� eMail�A���׵��� 100 <br>");
       // sql = "ALTER TABLE people ADD eMail varchar(100)";
      // smt.executeUpdate(sql);
        
        out.println("�s�W�G����� ... <br>");
        sql = "insert into people (name,eMail) values ('�����','axel@trending.com.tw')";
        smt.executeUpdate(sql);
        sql = "insert into people (name,eMail) values ('���g','amy@trending.com.tw')";
        smt.executeUpdate(sql);
        con.close();        
      %>
    
    </body>
</html>
