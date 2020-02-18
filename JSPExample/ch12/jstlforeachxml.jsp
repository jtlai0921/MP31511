<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>
<html>
    <head><title>XML if 判斷式</title></head>
    <body>

    <c:import url="xmlFile//customers.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <x:parse doc="${xmldoc}" var="xmldocparse"   />    
         
    <x:forEach select="$xmldocparse/customers/customer" var="eachitem">
        <x:choose>
        <x:when  select="$eachitem[@access='deny']"  >
            已失效客戶：<br>
        </x:when>
        <x:otherwise>
            有效客戶：<br>   
        </x:otherwise>
        </x:choose>
        編號(customerid):<x:out  select="$eachitem/customerid" /> <br>   
        姓名(customername):<x:out  select="$eachitem/customername" /> <br>        
    </x:forEach>

    </body>
</html>
