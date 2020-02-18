<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>數值轉換成為字串</title></head>
    <body>
    <%
        String s1="255",s2;
        int a;
        float b=3.14f ;
        a=Integer.parseInt(s1) ; //將字串s1轉成整數，並指定給a
        s2=String.valueOf(b) ;	//把浮點數轉成字串
        out.println("a=" +a ) ;	 //印出結果255
         out.println("<br>" ) ;	 //印出結果255
        out.println("s2="+s2) ;  //印出結果 3.14
    %>

    </body>
</html>
