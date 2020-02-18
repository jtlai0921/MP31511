<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>

<html>
    <head><title>資料庫的開啟與關閉</title></head>
    <body>
    <%
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch13\\db\\webData.mdb");
        if(con.isClosed())
            out.println("資料庫已經關閉了！<br>");
         else
            out.println("資料庫正在開啟中！<br>");
        
        con.close();
            
        if(con.isClosed())
             out.println("資料庫已經關閉了！");
        else
             out.println("資料庫正在開啟中！");
     %>
    </body>
</html>