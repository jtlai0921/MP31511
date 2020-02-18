<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
    <head><title>示範字串擷取</title></head>
    <body>

    字串:The JSTL functions<br>
    索引 4~8 的子字串(fn:substring)：
    ${fn:substring("The JSTL functions",4,8)}<br>
    JSTL之後的子字串(fn:substringAfter)：
    ${fn:substringAfter("The JSTL functions ","JSTL")}<br>
    JSTL之前的子字串(fn:substringBefore)：
    ${fn:substringBefore("The JSTL functions ","JSTL")}<br>    
  
    </body>
</html>
