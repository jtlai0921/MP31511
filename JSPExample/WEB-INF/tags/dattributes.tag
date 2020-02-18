<%@tag dynamic-attributes="mnumbers"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<table border="1" width="100%">
<tr>
    <th width="50%">Book Title</th>
    <th width="50%">Book Price</th>
   </tr>
<c:forEach var="number"  items="${mnumbers}">
   <tr>
    <td width="50%" align="center">${number.key}</td>
    <td width="50%" align="center">${number.value}</td>
   </tr>
</c:forEach>
 </table> 
 <br>