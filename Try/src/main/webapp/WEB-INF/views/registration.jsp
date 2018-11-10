<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html>
<head>
    <title>Create an account</title>
</head>

<body>

<div>

    <form:form method="POST" modelAttribute="userForm">
        <p>Create your account</p>
        <spring:bind path="username">
            <div>
                <form:input type="text" path="username" placeholder="Username"/>
                <form:errors path="username"/>
            </div>
        </spring:bind>

        <spring:bind path="password">
            <div>
                <form:input type="password" path="password" placeholder="Password"/>
                <form:errors path="password"/>
            </div>
        </spring:bind>

        <spring:bind path="confirmPassword">
            <div>
                <form:input type="password" path="confirmPassword"
                            placeholder="Confirm your password"/>
                <form:errors path="confirmPassword"/>
            </div>
        </spring:bind>

        <button type="submit">Submit</button>
    </form:form>

</div>
</body>
</html>