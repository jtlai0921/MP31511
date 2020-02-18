<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>成績查詢主畫面</title></head>
    <body>
        <form action="resultForm.jsp" method="post">
        <%//  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       //  Connection con = DriverManager.getConnection("jdbc:odbc:webData");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb");
        Statement smt =  con.createStatement();
        String sql = "SELECT Name from grades";
        ResultSet rs = smt.executeQuery(sql);
        out.println("<select size='1' name = 'name'>");

        while(rs.next())
            out.println("<option>" + rs.getString(1));
            out.println("</select>");
            con.close();
        %>
        
        <input type="submit" value="查詢成績">
</form>

    </body>
</html>
