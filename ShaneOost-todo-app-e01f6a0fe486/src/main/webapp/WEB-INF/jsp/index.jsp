<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Todo List</title>
</head>
<link rel="stylesheet" href="/Style/CSS.css">
<body>
<h2>Your Personal Todo list</h2>

<a  type="button" class="glow-on-hover" href="${pageContext.request.contextPath}/todo/create" text-align= "center">Click to add new items</a>
<br>
<table>
    <thead>
    <tr>
        <br>
        <div class="test" style="text-overflow:ellipsis;">Help?  Click the button to add new items to the todo list</div>
        <td><label>Title      </label></td>
        <td><label>Completed        </label></td>
        <br>
        <td><label>Action</label></td>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="todo" items="${todos}">
    <tr>
        <td>
            ${todo.title}
        </td>
        <td>
            ${todo.completed}
        </td>
        <td>
            <a  type="button" class="glow-on-hover" href="${pageContext.request.contextPath}/todo/edit/${todo.id}">Edit</a>
            &nbsp;
            <Comp type button ></comp>
            <a id="Activate" type="button" class="glow-on-hover" href="${pageContext.request.contextPath}/todo/complete/${todo.id}">Complete</a>
            &nbsp;
            <a  type="button" class="glow-on-hover" href="${pageContext.request.contextPath}/todo/delete/${todo.id}">Delete</a>
        </td>
    </tr>
    </c:forEach>
</table>
</body>
</html>
