<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>

<html>
    <head><title>��Ʈw���}�һP����</title></head>
    <body>
    <%
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch13\\db\\webData.mdb");
        if(con.isClosed())
            out.println("��Ʈw�w�g�����F�I<br>");
         else
            out.println("��Ʈw���b�}�Ҥ��I<br>");
        
        con.close();
            
        if(con.isClosed())
             out.println("��Ʈw�w�g�����F�I");
        else
             out.println("��Ʈw���b�}�Ҥ��I");
     %>
    </body>
</html>