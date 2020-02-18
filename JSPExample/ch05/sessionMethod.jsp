<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>引用session方法</title></head>
    <body>
    
    <table>
          <tr><th align = "left">session的建立時間</th>
             <td><%=session.getCreationTime()%></td></tr>
          <tr><th align = "left">session的識別字串</th>
             <td><%=session.getId()%><br></td></tr>
          <tr><th align = "left">session最後被請求的時間</th>
             <td><%=session.getLastAccessedTime()%></td></tr>
          <tr><th align = "left">session預設結束的時間</th>
             <td><%=session.getMaxInactiveInterval()%></td></tr>
          <tr><th align = "left">是否為新建的session</th>
             <td><%=session.isNew()%></td></tr>
      </table>

    </body>
</html>
