<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<%@page import = "java.sql.*" %>
<html>
    <head><title>留言板首頁</title></head>
    <body>

    <font color="red" size="5">
    <b><i><center>JSP留言板</i></b>
    </font>
    <hr>
    <%
request.setCharacterEncoding("Big5") ;
        //  Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
       //  Connection con = DriverManager.getConnection("jdbc:odbc:msg");
Connection con=DriverManager.getConnection("jdbc:ucanaccess://C:\\Program Files\\Apache Software Foundation\\Tomcat 8.0\\webapps\\JSPExample\\ch19\\db\\msg.mdb");
        Statement smt =con.createStatement
            (ResultSet.TYPE_SCROLL_INSENSITIVE,
        ResultSet.CONCUR_READ_ONLY);
        
        int num=0,lastno,lastpage,nowpage,prepage,nextpage,nostart,noend;
        String sql = "select * from message";        //取出message中的所有資料
        ResultSet rs = smt.executeQuery(sql);
        
        rs.last();                                       //將指標移到最後一筆
        lastno = rs.getRow();                         //取出總資料筆數
        lastpage = (int)Math.ceil((double)lastno/5);    //計算最後一頁的編號
        
        if(request.getParameter("page") != null)      //取得傳來的頁碼            
            try{
                nowpage = Integer.parseInt(request.getParameter("page"));
            }catch(Exception e){
                nowpage = Integer.parseInt(request.getParameter("p"));
            }
        else
            nowpage = lastpage;
        
        prepage = nowpage -1;                        //上一頁
        nextpage = nowpage +1;                       //下一頁
        if(nowpage == 1)                             //判斷是否為第一頁
            prepage =1;
        if(nowpage == lastpage)                      //判斷是否為最後一頁
            nextpage = lastpage;
        
        nostart = nowpage * 5 -4;                    //計算開始編號
        noend = nowpage * 5;                         //計算結束編號
        sql = "select * from message where msgid between "+nostart+" and "+noend;
        rs = smt.executeQuery(sql);
        out.println("<table>");
        while(rs.next()){
           
            out.println("<tr><td bgcolor='pink'>留言人</td><td>"+
                    rs.getString("msgname")+"</td><td rowspan='3'><img src='pic//icon"+num+".jpg'></td></tr>");
            out.println("<tr><td bgcolor='pink'>訊息</td><td>"+rs.getString("msgcontent")+"</td></tr>");
            out.println("<tr><td bgcolor='pink'>時間</td><td>"+rs.getString("msgdate")+"</td></tr>");
            out.println("<tr><td colspan=2><hr></td></tr>") ;
            num++;
            if(num==5)
                num=0;
        }
         out.println("</table><br>");
         con.close();
    %>
 
    <form action="main.jsp?p=<%=nowpage%>" method="post">
    <a href="msg.html"><img src="pic//msg.jpg" border="0"></a>
    
    <a href='main.jsp?page=1'><img src=pic//first.jpg border=0></a> 
    <a href='main.jsp?page=<%=prepage%>'><img src=pic//previous.jpg border=0 ></a> 
    <a href='main.jsp?page=<%=nextpage%>'><img src=pic//next.jpg border=0 ></a> 
    <a href='main.jsp?page=<%=lastpage%>'><img src=pic//last.jpg border=0></a>　
    
    
    目前頁次 <b><%=nowpage%></font> /<font color=red><%=lastpage%></b></font> 
    <br>
    
    輸入顯示的頁碼： 
    <input type="text" size="3" name="page">
    <input type="submit" value="顯示留言"> 
    </form>
    </body>
</html>
