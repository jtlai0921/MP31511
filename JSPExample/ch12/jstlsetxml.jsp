<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>
<html>
    <head><title>儲存XML內容</title></head>
    <body>
    
    <c:import url="xmlFile//customers.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <x:parse doc="${xmldoc}" var="xmldocparse"   />    
    
    <x:set  select="$xmldocparse/customers"   var="customervalue"/>

    客戶編號(customerid):<x:out select="$customervalue/customer/customerid"    /><br> 
    客戶姓名(customername):<x:out select="$customervalue/customer/customername"    /><br> 

    </body>
</html>
