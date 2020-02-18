<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import="javax.xml.parsers.*" %>
<%@page import="org.w3c.dom.*" %>

<html>
<head><title>格式化 XML</title></head>
<body>
<%
DocumentBuilderFactory theDocumentBuilderFactory= 
        DocumentBuilderFactory.newInstance() ; 
DocumentBuilder theDocumentBuilder = 
        theDocumentBuilderFactory.newDocumentBuilder() ; 
Document theDocument = theDocumentBuilder.parse
        (request.getRealPath("/"+"ch12//xmlFile//customers.xml")) ; 

Element theParentElement = theDocument.getDocumentElement() ;       
NodeList theNodeList =theParentElement.getElementsByTagName("customer");

out.println("<table border=1 width='100%'> ");
out.println("<th>編號</th><th>姓名</th>");
out.println("<th>電話</th><th>郵件</th>");

for(int i=0;i<theNodeList.getLength();i++){
    Element theChildElement = (Element)theNodeList.item(i) ; 
    NodeList theChildNodeList  = null ; 
    String outString ="" ;
    out.println("<tr><td>"); 
    theChildNodeList=theChildElement.getElementsByTagName("customerid");
    outString = (theChildNodeList.item(0)).getFirstChild().getNodeValue() ;
    out.println(outString +"<br>")  ;    
    out.println("</td><td>");  
    //
    theChildNodeList=theChildElement.getElementsByTagName("customername");
    outString = (theChildNodeList.item(0)).getFirstChild().getNodeValue() ;
    out.println(outString +"<br>")  ;       
    out.println("</td><td>");   
    //
    theChildNodeList=theChildElement.getElementsByTagName("tel");
    outString = (theChildNodeList.item(0)).getFirstChild().getNodeValue() ;
    out.println(outString +"<br>")  ;  
    out.println("</td><td>");     
    //
    theChildNodeList=theChildElement.getElementsByTagName("email");
    outString = (theChildNodeList.item  (0)).getFirstChild().getNodeValue() ;
    out.println(outString +"<br>")  ;             
    out.println("</td></tr>");     
}    
%>

</tr>
</table>
</body>
</html>
