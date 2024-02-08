<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entities.Todo"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <title><c:out value="${page}" /></title>
</head>
<body>

<span class="border border-primary">
    <div class="container mt-3">
        <h1 class="text-center">Welcome to ToDo Manager</h1>

        <c:if test="${not empty msg }">
            <div class ="alert alert-success">
                <b><c:out value="${msg}"></c:out></b>
            </div>
        </c:if>

        <div class="row mt-5">
            <div class="col-md-2">
                <h3 class="text-center">Options</h3>
                <div class="list-group">
                    <button type="button" class="list-group-item list-group-item-action active" aria-current="true">Menu</button>
                    <a href='<c:url value="/add"/>' class="list-group-item list-group-item-action">Add TODO</a>
                    <a href='<c:url value="/home"/>' class="list-group-item list-group-item-action">View TODO</a>
                </div>
            </div>
        </div>

        <div class="col-md-10">
            <c:if test="${page == 'home' }">
                <h1 class="text-center">All TODOS</h1>

                <c:forEach items="${todos}" var="t">
                    <div class="card">
                        <div class="card-body">
                            <h3><c:out value="${t.todoTitle }"></c:out></h3>
                            <p><c:out value="${t.todoContent}"></c:out></p>
                            
                            <!-- Add delete button -->
                            <form action="<c:url value='/deleteTodo/${t.id}'/>" method="post">
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                            <!-- End delete button -->
                        </div>
                    </div>
                </c:forEach>
            </c:if>

            <c:if test="${page == 'add' }">
                <h1 class="text-center">Add TODO</h1>
                <br>
                <form:form action="saveTodo" method="post" modelAttribute="todo">
                    <div class="form-group">
                        <form:label path="todoTitle">Todo Title:</form:label>
                        <form:input path="todoTitle" class="form-control" placeholder="Enter your Todo Title" />
                    </div>

                    <div class="form-group">
                        <form:label path="todoTitle">Enter your email:</form:label>
                        <form:input path="todoTitle" class="form-control" placeholder="Enter your Todo Email" />
                    </div>

                    <div class="form-group">
                        <form:label path="todoContent">Todo Content:</form:label>
                        <form:textarea path="todoContent" class="form-control" placeholder="Enter your Todo Content" style="height:300px" />
                    </div>

                    <div class="container text-center">
                        <button type="submit" class="btn btn-primary">Save Todo</button>
                    </div>
                </form:form>
            </c:if>
        </div>
    </div>
</body>
</html>
