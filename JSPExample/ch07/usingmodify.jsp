<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>異動字串內容</title></head>
    <body>
    字串:The JSTL functions<br>
    轉換小寫(fn:toLowerCase)：
    ${fn:toLowerCase("The JSTL functions ")}<br>
    轉換大寫(fn:toUpperCase)：
    ${fn:toUpperCase("The JSTL functions ")}<br>
    
    分割與結合字串(fn:split/fn:join)
    <c:set var="splitString" value='${fn:split("The JSTL functions "," ")}' />
    ${fn:join(splitString,"-")}<br>
    
    置換JSTL為Java(fn:replace)：
    ${fn:replace("The JSTL functions ","JSTL","Java")}<br>
    
    </body>
</html>
