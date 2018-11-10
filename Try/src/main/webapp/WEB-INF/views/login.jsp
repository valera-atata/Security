<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>Log in with your account</title>
</head>
<body>
<div>

    <form method="POST" action="${contextPath}/login">
        <h2>Log in</h2>
        <div>
            <p>${message}</p>
            <input name="username" type="text" placeholder="Username"/>
            <input name="password" type="password" placeholder="Password"/>
            <p>${error}</p>
            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            <button type="submit">Login</button>
            <p><a href="${contextPath}/registration">Create an account</a></p>
        </div>
    </form>

</div>
</body>
</html>