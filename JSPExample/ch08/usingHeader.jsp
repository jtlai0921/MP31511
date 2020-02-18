<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>列出標頭資訊</title></head>
    <body>
     
      accept-language：${header["accept-language"]}<br>
      accept-encoding：${header["accept-encoding"]}<br>
      user-agent：${header["user-agent"]}<br>
      host：${header["host"]}<br>
      connection：${header["connection"]}<br>
      cookie：${header["cookie"]}<br>
             
    </body>
</html>
