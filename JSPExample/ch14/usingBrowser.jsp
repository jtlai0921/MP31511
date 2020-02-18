<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*"%>
<html>
    <head><title>資料瀏覽</title></head>
    <body>
<%! int num=1;     //宣告全域變數 num %>
<%
    //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       //  Connection con = DriverManager.getConnection("jdbc:odbc:webData");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch14\\db\\webData.mdb");
    Statement smt =  con.createStatement
        (ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
    
    String sql = "SELECT * FROM grades";
    ResultSet rs = smt.executeQuery(sql);
    rs.last();                 //將指標移至最後一筆資料
    int last = rs.getRow();   //取得總資料筆數
    String view = request.getParameter("view");
    
    if(view != null){
     int select = Integer.parseInt(view);
     switch(select){
     case 1: 
        num = 1;         //選擇瀏覽第一筆,num 設為 1
        break;
     case 2: 
        if(num == 1)    //選擇瀏覽上一筆,num 遞減 1
            num = 1;
        else
            num--;
        break;
      case 3: 
        if(num == last)  //選擇瀏覽下一筆,num 遞增 1
            num = last;
        else
           num++;
        break;
      case 4: num = last;      //選擇瀏覽最後一筆,num 設為 last
        break;
      default:
    }
    }
    String input = request.getParameter("input");
    if(input != null)
        num = Integer.parseInt(input);
    rs.absolute(num);          //將指標移動到第 num 筆資料元素
%>
<form action="usingBrowser.jsp" method="get">
<table>
<tr>
<td>  <a href="usingBrowser.jsp?view=1">第一筆</a></td>
<td>　<a href="usingBrowser.jsp?view=2">上一筆</a></td>
<td>　<a href="usingBrowser.jsp?view=3">下一筆</a></td>
<td>　<a href="usingBrowser.jsp?view=4">最後一筆</a></td>
<td>　輸入學號：<input type="text" size="3" name="input">
<input type="submit" value="顯示成績"></td>
</tr>
</form>
<font color="red" size="5"><b><%=rs.getString(1)%></b></font> 號
<font color="blue" size="5"><%=rs.getString(2)%></font> 的成績
<hr>
<%
    int intChinese =rs.getInt(3) ;
    int intEnglish=rs.getInt(4) ;
    int intMath=rs.getInt(5) ;
    int intSum =  intChinese + intEnglish + intMath ;

    out.println("國文=" + intChinese + "<br>") ;
    out.println("英文=" + intEnglish + "<br>") ;
    out.println("數學=" + intMath + "<br><br>") ;
    out.println("總分=" + intSum + "<br>") ;
%>
<HR>

</body>
</html>
