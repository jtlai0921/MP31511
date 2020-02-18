<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>switch 敘述</title></head>
    <body>
    
	<%
	   int intWeek = 2 ;
	   switch(intWeek){
	    case 1  :
	     out.println("intWeek目前的數值代表 星期天 !!") ;
	     break ;
	    case 2   :
	     out.println("intWeek目前的數值代表 星期一 !!") ;
	     break ;
	    case 3   :
	     out.println("intWeek目前的數值代表 星期二 !!") ;
	     break ;
	    case 4   :
	     out.println("intWeek目前的數值代表 星期三 !!") ;
	     break ;
	    case 5   :
	     out.println("intWeek目前的數值代表 星期四 !!") ;
	     break ;
	    case 6   :
	     out.println("intWeek目前的數值代表 星期五 !!") ;
	     break ;
	    case 7   :
	     out.println("intWeek目前的數值代表 星期六 !!") ;
	     break ;
	    default   :
	     out.println("沒有定義目前的星期日數 !!") ;
	     break ;
	   }       
	%>

    </body>
</html>
