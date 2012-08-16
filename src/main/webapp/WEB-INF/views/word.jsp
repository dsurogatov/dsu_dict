<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf8">
	<title><spring:message code="label.title" /></title>
	
	<!-- <link rel="stylesheet" type="text/css" href="resources/css/ext-all.css">
    <script type="text/javascript" src="resources/extjs/ext-all-debug.js"></script>
    <script type="text/javascript" src="resources/app.js"></script> -->
	
</head>
<body>

<a href="<c:url value="/logout" />">
	<spring:message code="label.logout" />
</a>
  
<h2><spring:message code="label.title" /></h2>

<form:form method="post" action="add" commandName="word">

	<table>
		<tr>
			<td><form:label path="value">
				<spring:message code="label.value" />
			</form:label></td>
			<td><form:input path="value" /></td>
		</tr>		
		<tr>
			<td colspan="2"><input type="submit"
				value="<spring:message code="label.addWord"/>" /></td>
		</tr>
	</table>
</form:form>

<h3><spring:message code="label.words" /></h3>
<c:if test="${!empty wordList}">
	<table class="data">
		<tr>
			<th><spring:message code="label.value" /></th>
			<th>&nbsp;</th>
		</tr>
		<c:forEach items="${wordList}" var="word">
			<tr>
				<td>${word.value}</td>
				<td><a href="delete/${word.id}"><spring:message code="label.delete" /></a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>

</body>
</html>