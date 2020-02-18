<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="mytag"  tagdir="/WEB-INF/tags/" %>
<html>
    <head><title>JSP Page</title></head>
    <body>
   
    <mytag:fragattributes 
                JSP實務="550" JSP技術精要="560" JSP入門="490" >
        <jsp:attribute name="title" >        
        <table border="0" width="100%">
          <tr>
            <td ><font size="6"><b>JSP 書籍列表<b></font><hr></td>            
          </tr>
        </table>
        </jsp:attribute>               
    </mytag:fragattributes>
    </body>
</html>