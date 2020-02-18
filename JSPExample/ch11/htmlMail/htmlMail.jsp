<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import ="java.util.*,java.io.*"%>

<%@page import ="javax.mail.*"%>
<%@page import ="javax.mail.internet.*"%>
<%@page import ="javax.activation.*"%>
<html>
    <head><title>寄送 HTML 格式郵件</title></head>
    <body>
    <% 
        Properties theProperties = System.getProperties() ; 
        theProperties.put("mail.host","127.0.0.1") ; 
        theProperties.put("mail.transport.protocol","smtp") ; 
    
        Session theSession = Session.getDefaultInstance(theProperties,null) ; 
        theSession.setDebug(false) ;     
        
        MimeMessage theMessage = new MimeMessage(theSession) ;        
        theMessage.setFrom(new InternetAddress("sean@testServer.com.tw") ) ;         
        theMessage.setRecipients(Message.RecipientType.TO,"txw5558@mail.zct.com.tw") ;        
        theMessage.setSubject("JavaMail HTML 格式郵件") ;  
       
        MimeBodyPart theMimeBodyPart0 = new MimeBodyPart() ;        
        String bodyMessage ="<font size=7>JSP JavaMail HTML 格式郵件 </font>"; 
        theMimeBodyPart0.setContent(bodyMessage,"text/html;charset=Big5") ;         
        
        String theFileName = request.getRealPath
                ("/"+"ch11//htmlMail//htmlFile.htm") ; 
       
        FileDataSource theFileDataSource= new FileDataSource(theFileName) ; 
        MimeBodyPart theMimeBodyPart = new MimeBodyPart() ;  
        theMimeBodyPart.setDataHandler(new DataHandler(theFileDataSource)) ; 
        theMimeBodyPart.setFileName(theFileDataSource.getName()) ; 

        String theFileName1=request.getRealPath("/"+"ch11//htmlMail//rpic.jpg") ; 
        FileDataSource theFileDataSource1= new FileDataSource(theFileName1) ; 
        MimeBodyPart theMimeBodyPart1 = new MimeBodyPart() ;  
        theMimeBodyPart1.setDataHandler(new DataHandler(theFileDataSource1)) ;  
        theMimeBodyPart1.setHeader("Content-ID","rpic")  ;
        
        Multipart theMultipart = new MimeMultipart("related");
        theMultipart.addBodyPart(theMimeBodyPart0) ;  
        theMultipart.addBodyPart(theMimeBodyPart) ; 
        theMultipart.addBodyPart(theMimeBodyPart1) ; 
        theMessage.setContent(theMultipart) ;         
        
        Transport.send(theMessage) ; 
        out.println("郵件寄送完畢 !!") ;  
              
    %>
    </body>
</html>
