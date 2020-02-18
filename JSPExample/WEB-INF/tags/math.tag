<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@attribute name="firstNumber"  required="true"  %>
<%@attribute name="secondNumber"  required="true"  %>

<%@variable  name-given="add"%>
<%@variable  name-given="sub"%>
<%@variable  name-given="multiply"%>
<%@variable  name-given="divide"%>

<c:set var="add"  value="${firstNumber+secondNumber}"   />
<c:set var="sub"  value="${firstNumber-secondNumber}"   />
<c:set var="multiply"  value="${firstNumber*secondNumber}"   />
<c:set var="divide"  value="${firstNumber/secondNumber}"   />

<jsp:doBody  />

