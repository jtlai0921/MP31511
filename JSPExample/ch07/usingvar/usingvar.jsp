<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>�ܽdvar�ݩ�</title></head>
    <body>
    
    <c:import  url="theFile/importFile.jsp"   var="varString"  />
    
    <table border="1" width="100%">
    <tr>
        <td width="100%"> ${varString}  </td>
    </tr>
    </table>
   
    </body>
</html>
