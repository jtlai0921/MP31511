<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"  %>
<%@taglib prefix="x"  uri="http://java.sun.com/jsp/jstl/xml"  %>

<html>
    <head><title>轉換XML文件樣式</title></head>
    <body>  

    <c:import url="xmlFile//customers.xml"   charEncoding="MS950"  var="xmldoc"  /> 
    <c:import url="xmlFile//customers.xsl"   charEncoding="MS950"  var="xmlxslt"  /> 
    <x:transform doc="${xmldoc}" xslt="${xmlxslt}"  />
    
    </body>
</html>