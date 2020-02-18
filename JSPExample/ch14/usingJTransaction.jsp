<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>批次交易</title></head>
    <body>
     
<sql:transaction  dataSource="jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb,
net.ucanaccess.jdbc.UcanaccessDriver">
       
       <sql:update    sql="UPDATE Books SET Amount = 100 "     var ="updateCount" />       

       <sql:update    sql="UPDATE Books SET Amount = ?  WHERE ID=?  "     var ="updateCounts" >      
	<sql:param   value="${'500'}"  />
	<sql:param   value="${'1001'}"  />
       </sql:update >
      </sql:transaction >
   
      
       <c:out value="${'資料異動筆數：'}" />
       <c:out value="${updateCount}" />
      <br>
       <c:out value="${'資料異動筆數：'}" />
       <c:out value="${updateCounts}" />     

    </body>
</html>
