<%@page contentType="text/html"%>
<%@page pageEncoding="BIG5"%>
<%@page import ="java.util.*,java.io.*"%>
<%@page import ="javax.mail.*"%>
<%@page import ="javax.mail.internet.*"%>
<%@page import ="javax.activation.*"%>

<html>
    <head><title>JavaMail</title></head>
    <body>
    <% 
        Properties theProperties = System.getProperties() ; 
        theProperties.put("mail.host","127.0.0.1") ; 
        theProperties.put("mail.transport.protocol","smtp") ; 
               
    
        Session theSession = 
 			Session.getDefaultInstance(theProperties,null) ; 
        theSession.setDebug(false) ;     
        
        MimeMessage theMessage = new MimeMessage(theSession) ;        
        theMessage.setFrom
 		(new InternetAddress("sean@testServer.com.tw") ) ;         
        theMessage.setRecipients
 		(Message.RecipientType.TO,"txw5558@mail.zct.com.tw") ; 
        
        theMessage.setSubject("JavaMail 測試郵件") ;        
        theMessage.setText
 		("JSP與JavaMail測試郵件內容... " , "Big5") ; 
        
       Transport.send(theMessage) ; 
        out.println("郵件寄送完成") ;               
    %>
    </body>
</html>