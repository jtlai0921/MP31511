<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>

<html>
    <head><title>JSTL與XML剖析</title></head>
    <body>  
    <x:parse  var="xmlbody"   >   
    <customer>
        <customerid >2002</customerid >
        <customername >tim</customername >
    </customer>
    </x:parse>
    <b><u>剖析XML本體內容</u></b><br>
    客戶編號(customerid):<x:out  select="$xmlbody/customer/customerid" /> <br>
    客戶姓名(customername):<x:out  select="$xmlbody/customer/customername" /> <br>

    <br><br>
    <b><u>剖析XML文件內容</u></b><br>
    <c:import url="xmlFile//customers.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <x:parse doc="${xmldoc}" var="xmldocparse"   />     
    客戶編號(customerid):<x:out  select="$xmldocparse/customers/customer/customerid" /> <br>   
    客戶姓名(customername):<x:out  select="$xmldocparse/customers/customer/customername" /> <br>   

    </body>
</html>
