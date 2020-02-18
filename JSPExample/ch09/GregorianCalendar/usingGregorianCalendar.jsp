<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import ="java.util.*"%>
<html>
    <head><title>使用GregorianCalendar</title></head>
    <body>
    <%!
    String toIcon(int timevalue){
        String time = String.valueOf(timevalue);
        String showIcon = "";
        int count = time.length();
        for(int i=0;i<count;i++)
            showIcon = showIcon + "<img src = '" + time.charAt(i) + ".jpg'>";
        return(showIcon);
    }
    %>
    <%
    GregorianCalendar time = new GregorianCalendar();
    int year,month,date,hour,minute,second;
    String msg;
    
    year=time.get(time.YEAR) ; 
    month=time.get(time.MONTH)+1 ; 
    date=time.get(time.DATE) ; 
    hour=time.get(time.HOUR) ; 
    minute=time.get(time.MINUTE) ; 
    second=time.get(time.SECOND) ; 
    
    out.println("<font size = '5'>您上線的時間是：</font>");
    out.println("<hr>");
    out.println(
            toIcon(year) + "年" + 
            toIcon(month) + "月" + 
            toIcon(date) + "日" + 
            toIcon(hour) + "時" + 
            toIcon(minute) + "分" + 
            toIcon(second) + "秒");
    msg = (time.isLeapYear(year))?"是":"不是";
    %>
    <hr>
    今年 <font size = "5"><%=msg%></font> 潤年
    </body>
</html>
