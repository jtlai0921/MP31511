<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>
<html>
    <head><title>XML if 判斷式</title></head>
    <body>

    <c:import url="xmlFile//customerspd.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <x:parse doc="${xmldoc}" var="xmldocparse"   />    
        
    <x:if  select="$xmldocparse/customers/customer[@access='deny']"  >
        已失效客戶：<br> 
        編號(customerid):<x:out  select="$xmldocparse/customers/customer/customerid" /> <br>   
        姓名(customername):<x:out  select="$xmldocparse/customers/customer/customername" /> <br> 
    </x:if>

    </body>
</html>
