<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>�ܽdquery����</title></head>
    <body>

 <sql:setDataSource  driver="net.ucanaccess.jdbc.UcanaccessDriver" url="jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb" />
       <sql:query    sql="SELECT * FROM Author"     var ="selectResult" />      


      <c:forEach var="row" items="${selectResult.rows}">
        <c:out value="${'�m�W�G'}"/>
        <c:out value="${row.Name}"/>
        <c:out value="${'|�a�}�G'}"/>
        <c:out value="${row.Address}"/>
        <br>
      </c:forEach>

    </body>
</html>
