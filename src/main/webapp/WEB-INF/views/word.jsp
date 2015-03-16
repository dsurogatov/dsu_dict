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
	
	<link rel="stylesheet" type="text/css" href="resources/css/class.css">
	
</head>
<body>

<div id="pnlCaption">
	<div id="pnlTitle" ><spring:message code="label.title" /></div>	
	<a class="loginHref" href="<c:url value="/logout" />">
		<spring:message code="label.logout" />
	</a>
	<div class="helper"></div>
</div>

<div id="pnlMenu">
	<div class="menuItem">
		<a class="menuItemHref" href="http://www.microsoft.com">Новое слово</a>
	</div>
	<div id="pnlSearch">
		<input id="edtSearch">
	</div>
	<div id="pnlSearchBtn">
		<a href="http://www.espn.com" target="_blank">
			<img src="resources/ico/search_button.png"  />
		</a>
	</div>
</div>

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