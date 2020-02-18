<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <%
        //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       //  Connection con = DriverManager.getConnection("jdbc:odbc:webData");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb");
        Statement smt =  con.createStatement();
        
        String sql;
        sql = "SELECT TOP 3 ID,Name,Address from Author";
        ResultSet rs = smt.executeQuery(sql);

        out.println("取出資料表中的前三筆資料<hr>");
        out.println("<table border = '1'>");
        out.println("<tr>"+
        "<th>編號</th><th>姓名</th><th>住址</th></tr>");
        
        while(rs.next()){
            out.println("<tr><td>" + rs.getString(1) +
            "</td><td>" + rs.getString(2) +
            "</td><td>" + rs.getString(3) + "</td></tr>" );
        }
        
        con.close();
    %>
    </body>
</html>
