<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>

<div>   
	<form action="${contextPath}/logout" method="POST">
	    <input type="submit" value="Logout"/>
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>		
	</form>
	<form:form method="POST" modelAttribute="form">
		<table style="margin: center">
			<tr>	
				<td width="200">Welcome, ${pageContext.request.userPrincipal.name}</td>
				<td width="200"><!-- <input type="submit" name="logout" value="Logout"> --></td>
				<td width="200"><input type="submit" name="adminPage" value="Admin Page"></td>
			</tr>
			<tr>
				<td><form:label path="sendEmail">Input your email:</form:label></td>
				<td colspan="2"><form:input path="sendEmail" width="300" value="${emailForm.sendEmail }"/></td>
			</tr>
			<tr>
				<td><form:label path="password">Input your password:</form:label></td>
				<td colspan="2"><form:input type="password" path="password" width="300" value="${emailForm.password }"/></td>
			</tr>
			<tr>
				<td><form:label path="recipEmail">Input recipient's mail:</form:label></td>
				<td colspan="2"><form:input path="recipEmail" width="300" value="${emailForm.recipEmail }"/></td>
			</tr>
			<tr>
				<td><form:label path="message">Input your message:</form:label></td>
				<td colspan="2"><form:textarea path="message" width="300" value="${emailForm.message }"/></td>
			</tr>
			<tr>
				<td colspan="3"><p>${result }</p></td>
			</tr>
			<tr>
				<td colspan="3"><input type="submit" name="send" value="send"></td>
			</tr>
		</table>
	</form:form>
</div>
</body>
</html>