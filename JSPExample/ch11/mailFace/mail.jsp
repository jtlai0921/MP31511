<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import ="java.util.*,java.io.*"%>

<%@page import ="javax.mail.*"%>
<%@page import ="javax.mail.internet.*"%>
<%@page import ="javax.activation.*"%>
<html>
    <head><title>寄送郵件介面</title></head>
    <body>
      <%       
        request.setCharacterEncoding("Big5") ; 
        Properties theProperties = System.getProperties() ; 
        theProperties.put("mail.host","127.0.0.1") ; 
        theProperties.put("mail.transport.protocol","smtp") ; 
    
        Session theSession = Session.getDefaultInstance(theProperties,null) ; 
        theSession.setDebug(false) ;     
        
        MimeMessage theMessage = new MimeMessage(theSession) ;        
        theMessage.setFrom(new InternetAddress(
                request.getParameter("sendname")) ) ;         
        theMessage.setRecipients(Message.RecipientType.TO,
                request.getParameter("acceptname")) ; 
        
        theMessage.setSubject(request.getParameter("subject")) ;             
        MimeBodyPart theMimeBodytext = new MimeBodyPart() ;
        theMimeBodytext.setText(request.getParameter("content")) ; 
        Multipart theMultipart = new MimeMultipart();
        theMultipart.addBodyPart(theMimeBodytext) ;  
    
        String theFileName =request.getParameter("attachfile"); 
        if(theFileName.length()> 0){            
            MimeBodyPart theMimeBodyPart = new MimeBodyPart() ;
            FileDataSource theFileDataSource= new FileDataSource(theFileName) ; 
            theMimeBodyPart.setDataHandler(new DataHandler(theFileDataSource)) ; 
            theMimeBodyPart.setFileName(theFileDataSource.getName()) ;             
            theMultipart.addBodyPart(theMimeBodyPart) ;                        
        }    
        theMessage.setContent(theMultipart) ; 
        Transport.send(theMessage) ; 
        out.println("郵件寄送完成") ;  
              
    %>
    </body>
</html>