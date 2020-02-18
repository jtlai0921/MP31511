
<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>

<html>
    <head><title>取消訂閱電子報</title></head>
    
    <body>

    <table border="0" width="100%">
      <tr>
        <td width="100%"><b><font size="5">取消訂閱電子報</font></b>
        <a href='paperlist.jsp'>[瀏覽]</a>
          <hr>
        </td>
      </tr>
      <tr>
        <td width="100%">
          <form method="post" action="orderCheck.jsp">            
            <p>取消訂閱郵件：<input type="text" name="mailorder" size="30">
            <input type="hidden" name="cancel"  value="yes" size="30">
            <input type="submit" value='取消'>
          </form>
        </td>
      </tr>
    </table>
    </body>
</html>