<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<html>
<head><title>訂閱電子報</title></head>
<body>
<%
request.setCharacterEncoding("Big5") ; 
String cancelValue ="" ; 
if(request.getParameter("cancel")!=null)
    cancelValue = request.getParameter("cancel") ; 

String nameorder = request.getParameter("nameorder") ; 
String mailorder = request.getParameter("mailorder") ; 
String checkMail = "SELECT * FROM list WHERE mail='" + mailorder + "'"  ;    

int updateCount=0 ; 

// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
// Connection con = DriverManager.getConnection("jdbc:odbc:paper");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch20\\db\\paper.mdb");
Statement smt =con.createStatement
    (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
ResultSet chkResult = smt.executeQuery(checkMail) ; 

if(cancelValue.equals("yes")){
    if(chkResult.next() ==  true){
        String newOrder = "DELETE FROM list WHERE mail='"+mailorder+"'" ; 
        updateCount=smt.executeUpdate(newOrder) ;            
        if(updateCount==1)                     
            out.println("郵件地址 "+mailorder+" 已取消訂閱 !!" );
    }else
        out.println("郵件地址 "+mailorder+" 無任何訂閱記錄 !!" );
}else{
    if(chkResult.next() !=  true){
        String newOrder = "INSERT INTO list(mail,name)VALUES('"+mailorder+"','"+nameorder+"')" ; 
        updateCount=smt.executeUpdate(newOrder) ;            
        if(updateCount==1){
             out.println("親愛的　"+nameorder+"　會員您好：<br>" ); 
             out.println("您已經成功訂閱 JSP 電子報，電子報收件地址如下：<br>" );
             out.println("<b>" + mailorder+"</b>" );   
        }
    }else
         out.println("郵件地址 "+mailorder+" 已訂閱 !!" ); 
}       
%>
</body>
</html>
