<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
    <head><title>日期時間格式化</title></head>
    <body>
      <jsp:useBean id="nowDateTime" class="java.util.Date" />      
      <table border="1" width="100%">
      <tr>
        <th width="50%">格式</th>
        <th width="50%">輸出</th>
      </tr>
      <tr>
        <td width="50%"  align=right>原始日期時間表示式</td>
        <td width="50%">
        <fmt:formatDate value="${nowDateTime}"  type="both"
                                    dateStyle="full"  timeStyle="full" />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>medium日期</td>
        <td width="50%">
        <fmt:formatDate value="${nowDateTime}"  type="date" dateStyle="medium" />
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>medium時間</td>
        <td width="50%">
        <fmt:formatDate value="${nowDateTime}"  type="time" timeStyle="medium" />      
        </td>
      </tr>
      <tr>
        <td width="50%" align=right>MM-dd-yyyy  HH:mm:ss</td>
        <td width="50%">
        <fmt:formatDate value="${nowDateTime}"  type="date" 
                                    timeStyle="medium" pattern="MM-dd-yyyy  HH:mm:ss"/>     
        </td>
      </tr>  
    </table>
    </body>
</html>
