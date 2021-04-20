<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Example</title>
    <link rel="stylesheet" href="/webjars/bootstrap/4.5.0/css/bootstrap.min.css" />
    <script src="/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="/webjars/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container">
        <h1>New Person</h1>
        <form:form action="/persons/create" method="post" modelAttribute="person">
            <p>
                <form:label path="firstName">First Name</form:label>
                <form:errors path="firstName" />
                <form:input path="firstName" />
            </p>
            <p>
                <form:label path="lastName">Last Name</form:label>
                <form:errors path="lastName" />
                <form:textarea path="lastName" />
            </p>
            <input type="submit" value="Submit" />
        </form:form>
    </div>
</body>

</html>