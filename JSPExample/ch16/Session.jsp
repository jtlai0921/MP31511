<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>�ܽdSession���A���ͩR�g��</title></head>
    <body>
    <jsp:useBean id="count" scope="session" class="bean.Counter"/>

	<font color="red">�d��Gsession</font><br>	<br>
	
	�z�O������
        <font color=blue>
            <jsp:getProperty name="count" property="counter"/>
	</font>����[��

    </body>
</html> 