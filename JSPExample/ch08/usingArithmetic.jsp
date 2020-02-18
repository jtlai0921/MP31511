<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>JSP Page</title></head>
    <body>
      <table border="1" width="100%">
      <tr>
        <td width="50%">運算式</td>
        <td width="50%">結果</td>
      </tr>
      <tr>
        <td width="50%"> \${6+4}　</td>
        <td width="50%"> ${6+4}　</td>
      </tr>
      <tr>
        <td width="50%">\${6-4}　</td>
        <td width="50%">${6-4}　　</td>
      </tr>
      <tr>
        <td width="50%">\${6*4}　</td>
        <td width="50%">${6*4}　　</td>
      </tr>
      <tr>
        <td width="50%">\${6/4}　</td>
        <td width="50%">${6/4}　　</td>
        
      </tr>
      <tr>
        <td width="50%">\${6div4}　</td>
        <td width="50%">${6 div 4}  </td>
      </tr>
      <tr>
        <td width="50%">\${6%4}　</td>
        <td width="50%">${6%4}  </td>
      </tr>
      <tr>
        <td width="50%">\${6mod4}　</td>
        <td width="50%">${6 mod 4}  </td>
      </tr>
    </table>    
    </body>
</html>
