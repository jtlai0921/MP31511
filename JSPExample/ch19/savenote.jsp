<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>

<%!
     String newline(String str)         //處理換行字元的自訂方法
     {
      int index=0;
      while((index=str.indexOf("\n"))!=-1)
       str=str.substring(0,index)+"<br>"+str.substring(index+1);
      return(str);
     }
%>
<%
request.setCharacterEncoding("Big5") ;
     //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       //  Connection con = DriverManager.getConnection("jdbc:odbc:msg");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch19\\db\\msg.mdb");
     Statement smt =  con.createStatement();
     String name = new String
             (request.getParameter("name").getBytes("ISO-8859-1"));
     String note = new String
             (request.getParameter("note").getBytes("ISO-8859-1"));
     note = newline(note);
     String sql;
     sql=             "insert into message(msgname,msgcontent) values ('"+name+"','"+note+"')";
     smt.execute(sql);
     con.close();
     response.sendRedirect("main.jsp");
%>