<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Driver's License</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <h1>New License</h1>
        <form:form action="/licenses/create" method="post" modelAttribute="license">
            <p>
                <form:label path="person">Person:</form:label>
                <form:select path="person">
                    <c:forEach items="${personList}" var="person">
                        <form:option value="${person.id}">
                            <c:out value="${person.firstName} ${person.lastName}" />
                        </form:option>
                    </c:forEach>
                </form:select>
            </p>
            <p>
                <form:label path="state">State</form:label>
                <form:errors path="state" />
                <form:input path="state" />
            </p>
            <p>
                <form:label path="expirationDate">Expiration Date:</form:label>
                <form:errors path="expirationDate" />
                <form:input type="date" path="expirationDate" />
            </p>
            <input type="submit" value="Submit" />
        </form:form>
    </div>
</body>

</html>