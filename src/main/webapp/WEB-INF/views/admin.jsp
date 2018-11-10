<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>Admin</title>
</head>

<body>
<div>

	<p>Welcome to Admin Page, ${pageContext.request.userPrincipal.name}</p>
	<form action="${contextPath}/logout" method="POST">
	    <input type="submit" value="Logout"/>
	    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>		
	</form>
	
	<table>
    	<tr>
    		<th>id</th>
    		<th>name</th>
    		<th>password</th>
    	</tr>
    	<c:forEach items="${users}" var="users">
		    <tr>      
		        <td>${users.id}</td>
		        <td>${users.username}</td>
		        <td>${users.password}</td>
		    </tr>
		</c:forEach>
    </table>
<%-- 	
    <c:if test="${pageContext.request.userPrincipal.name != null}">
        <form id="logoutForm" method="post" action="${contextPath}/logout">
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        </form>
        <h2>Admin Page ${pageContext.request.userPrincipal.name} | <a onclick="document.forms['logoutForm'].submit()">Logout</a>
        </h2>
    </c:if> --%>
    
</div>
</body>
</html>