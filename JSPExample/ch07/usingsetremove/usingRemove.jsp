<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>示範var屬性</title></head>
    <body>
    
    <c:set    value="設定字串"  var="varString"  />       
    <table border="1" width="100%">
    <tr>
        <td width="100%"> ${varString}  </td>
    </tr>
    </table>
    
    <c:remove var="varString"  />
    <table border="1" width="100%">
    <tr>
        <td width="100%"> ${varString}  </td>
    </tr>
    </table>
   
    </body>
</html>
