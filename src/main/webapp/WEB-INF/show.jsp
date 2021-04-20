<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Profile</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <h1>
            <c:out value="${ license.person.firstName} ${license.person.lastName}" />
        </h1>
        <p>License Number:
            <c:out value="${license.number}" />
        </p>
        <p>State:
            <c:out value="${ license.state }" />
        </p>
        <p>Expiration Date:
            <fmt:formatDate pattern="MM-dd-yyyy" value="${license.expirationDate}" />
        </p>
    </div>
</body>

</html>