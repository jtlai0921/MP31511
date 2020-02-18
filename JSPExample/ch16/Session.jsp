<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>示範Session型態的生命週期</title></head>
    <body>
    <jsp:useBean id="count" scope="session" class="bean.Counter"/>

	<font color="red">範圍：session</font><br>	<br>
	
	您是本站第
        <font color=blue>
            <jsp:getProperty name="count" property="counter"/>
	</font>位參觀者

    </body>
</html> 