<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@taglib prefix="mytag"  tagdir="/WEB-INF/tags/" %>
<html>
    <head><title>JSP Page</title></head>
    <body>
    <font  size="6"> <b>JSP書籍列表 </b></font>    <br>
    <mytag:dattributes  JSP實務="550" JSP技術精要="560" JSP入門="490"  />
    <font  size="6"><b>Java書籍列表 </b></font>    <br>
    <mytag:dattributes  Java範例集="390" Java教學實務="660" 精通Java="550" Java技術手冊="790" />
    </body>
</html>
