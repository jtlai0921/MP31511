<%@page import = "java.util.*"%>
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<HTML>
<HEAD>
    <TITLE>取得 Application 資料</TITLE>
</HEAD>
<BODY>
      <% 
          Object title=application.getAttribute("title") ;       
          Object author=application.getAttribute("author") ;
          if(title!=null){
              out.println("書名："+title.toString()) ; 
              out.println("<br>") ; 
              out.println("作者："+author.toString()) ;   
          }else{
              out.println("無設定application資料　!!") ;  
          }
      %>
</BODY>
</HTML>