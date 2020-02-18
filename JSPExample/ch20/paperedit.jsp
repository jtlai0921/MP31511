<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<%@page import ="java.util.*,java.io.*"%>
<%@page import ="javax.mail.*"%>
<%@page import ="javax.mail.internet.*"%>
<%@page import ="javax.activation.*"%>
<%
    request.setCharacterEncoding("Big5") ; 
    String editType=request.getParameter("editType"); 
    // Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
    // Connection con = DriverManager.getConnection("jdbc:odbc:paper");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch20\\db\\paper.mdb");
    Statement smt =con.createStatement
          (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    String editSQL = ""   ; 
    boolean  editState=false;
    String title = request.getParameter("title") ; 
    String content = request.getParameter("content") ; 
    
    if(editType.equals("new")){
        editSQL = "INSERT INTO paper" + 
                    "(papertitle,papercontent)VALUES" + 
                    "('"+title+"','"+content+"')" ; 
        smt.execute(editSQL) ;  
        out.println("電子新增完成 !!") ;
    }     
    if(editType.equals("update")){
        String paperid = request.getParameter("paperid") ; 
        editSQL = "UPDATE paper SET " + 
                        "papertitle='"+title+"'," + 
                        "papercontent='"+content+"' " + 
                   "WHERE " + 
                        "paperid=" + paperid ; 
        smt.execute(editSQL) ; 
        out.println("電子修改完成 !!") ; 
    }          
    if(editType.equals("published")){
        
        String paperid = request.getParameter("paperid") ; 
        String paperSQL="SELECT * FROM paper WHERE paperid=" +  paperid; 
        ResultSet theResultpaper = smt.executeQuery(paperSQL) ;
        theResultpaper.next() ; 
        String titlepublished = theResultpaper.getString("papertitle") ;
        String contentpublished = theResultpaper.getString("papercontent") ;        
        theResultpaper.close() ;         
        
        Properties theProperties = System.getProperties() ; 
        theProperties.put("mail.host","127.0.0.1") ; 
        theProperties.put("mail.transport.protocol","smtp") ;        
        String listSQL="SELECT * FROM list WHERE cancel=false" ; 
        ResultSet theResult = smt.executeQuery(listSQL) ;
        while(theResult.next()) { 
        
            String mail = theResult.getString("mail") ;     
            Session theSession = Session.getDefaultInstance(theProperties,null) ; 
            theSession.setDebug(false) ;     
            MimeMessage theMessage = new MimeMessage(theSession) ;     
            
            theMessage.setFrom(new InternetAddress("jsppaper@jspmail.com.tw") ) ;         
            theMessage.setRecipients(Message.RecipientType.TO,mail) ; 
            theMessage.setSubject(titlepublished) ;        
            theMessage.setText(contentpublished, "Big5") ; 
            Transport.send(theMessage) ; 
        }        
        GregorianCalendar theGregorianCalendar=new GregorianCalendar() ; 

        String publishdate = theGregorianCalendar.get(Calendar.YEAR)+"-"+
                theGregorianCalendar.get(Calendar.MONTH)+"-"+
                theGregorianCalendar.get(Calendar.DAY_OF_MONTH)  ;
                
        editSQL = "UPDATE paper SET " + 
                        "publishdate=#"+publishdate+"#, " + 
                        "published=true " + 
                   "WHERE " + 
                        "paperid=" + paperid ; 
        smt.execute(editSQL) ;   
       
        out.println("電子報已發行 !!") ;              
    } 
%>
<html>   
    <head><title>管理員登入網頁</title></head>
    <body>
        <br>
        <a  href="paperlist.jsp">
            <b>檢視電子報清單</b>
        </a>
    </body>
</html>





