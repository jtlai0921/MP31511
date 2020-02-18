<%@page contentType="text/html"%>
<%@page pageEncoding="Big5"%>
<html>
    <head><title>Exception 例外</title></head>
    <body>
    <%
        String strErrMessage =
            "這一段是catch子句所回傳的錯誤訊息 !! <br>" ;
        try {
            String input = request.getParameter("input");
            int intNumber = Integer.parseInt(input);
            out.print("您指定的陣列數目："+ intNumber + "<br><br>" );
            int a[]=new int[intNumber];

            for(int i=0;i<intNumber;i++){
                a[i]=i*10 ;
                out.println(a[i]) ;
                out.println(10/a[i]) ;
            }
        }
        catch(NumberFormatException e){
            out.println(strErrMessage+"<br>") ;
            out.println("網址列的參數不正確 !! <br>") ;
            out.println("請在參數列輸入整數值 !! <br>") ;
        }
        catch(ArrayIndexOutOfBoundsException e){
            out.println(strErrMessage+"<br>") ;
            out.println("超出陣列大小");
        }
        catch(Exception e){
            out.println(strErrMessage+"<br>") ;
            out.println(e.getMessage()) ;
        }
        finally{
            out.println("<b><br><br>程式執行結束  !! <b>");
        }
    %>
    </body>
</html>
