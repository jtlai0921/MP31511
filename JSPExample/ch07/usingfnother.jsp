<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head><title>JSP Page</title></head>
    <body>       

    未轉換字串：<br><The JSTL functions>
    轉換跳脫字元(fn:escapeXml)：
    ${fn:escapeXml("<The JSTL functions>")}<br>   
    
    集合物件長度(fn:length)：<br>
    <c:set var="splitString" value='${fn:split("The JSTL functions "," ")}' />
    陣列splitString：${fn:length(splitString)}<br>
    字串The JSTL functions：${fn:length("The JSTL functions ")}<br>
    
    </body>
</html>
