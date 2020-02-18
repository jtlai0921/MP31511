<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
    <head><title>範字串比對</title></head>
    <body>
    字串:The JSTL functions<br>
    比對字串：JSTL(fn:contains)-
    ${fn:contains("The JSTL functions ","JSTL")}<br>
    比對字串：jstl(fn:contains)-
    ${fn:contains("The JSTL functions ","jstl")}<br>
    比對字串：jstl(fn:containsIgnoreCase)-
    ${fn:containsIgnoreCase("The JSTL functions ","jstl")}<br><br>
    
    以The為字首開始(fn:startsWith)：
    ${fn:startsWith("The JSTL functions ","The")}<br>
    以functions為字尾作結束(fn:endsWith)：
    ${fn:endsWith("The JSTL functions ","functions ")}<br><br>
  
    子字串JSTL開始的索引值(fn:indexOf)：
    ${fn:indexOf("The JSTL functions ","JSTL")}<br>    
    
    </body>
</html>
