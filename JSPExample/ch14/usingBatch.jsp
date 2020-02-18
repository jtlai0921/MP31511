<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>批次執行</title></head>
    <body>
    <%
        //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       //  Connection con = DriverManager.getConnection("jdbc:odbc:webData");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb");
        Statement smt =  con.createStatement();
        
        String sql1 = "CREATE TABLE MemberData " +
         "(ID char(10),Name char(10),Address char(20),Tel char(15))";
        String sql2 = "INSERT INTO MemberData(ID,Name,Address,Tel) VALUES "  +
         "('1','呂佳心','高雄市北京路','07-3334444')";
        String sql3 = "INSERT INTO MemberData(ID,Name,Address,Tel) VALUES "  +
         "('2','史呈文','台南市東寬路','06-3331144')";

        smt.addBatch(sql1);
        smt.addBatch(sql2);
        smt.addBatch(sql3);
        smt.executeBatch();

        out.println("執行批次指令成功 !!　<br>") ;
        out.println("新增資料表 MemberData !!　<br>") ;
        out.println("新增資料欄位 ID、Name、Adrress、Tel !!　<br>") ;
        out.println("新增兩筆資料 !!") ;
     %>

    </body>
</html>
