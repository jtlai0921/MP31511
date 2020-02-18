<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>成績查詢結果</title></head>
    <body>
    <%
        //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       //  Connection con = DriverManager.getConnection("jdbc:odbc:webData");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb");
        Statement smt =  con.createStatement();
        String name =
                new String(request.getParameter("name").getBytes("ISO-8859-1"));
        String sql = "select * from grades where Name ='" + name + "'";
        String color;
        ResultSet rs = smt.executeQuery(sql);
        rs.next();
    %>   
                                                                     
    <font color="blue" size="5"><%=rs.getString(2)%>的成績如下：</font><p>  
    國文：<%=rs.getString(3)%><br>
    英文：<%=rs.getString(4)%><br>
    數學：<%=rs.getString(5)%><p>
    
    </body>
</html>
