<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <Style>
    body {background-color: powderblue;}
    h2   {color: Red;}
    td    {color: red;}
    </Style>
    <meta charset="UTF-8">
    <title>${modeTitle} Todo</title>
</head>
<link rel="stylesheet" href="/Style/CSS.css">
<body>
<h2>${modeTitle} Todo</h2>
<form:form action="${pageContext.request.contextPath}/todo/${mode}" method="post" modelAttribute="todo">
    <form:hidden path="id"/>
    <table>
        <tr>
            <td>
                <form:label path="title" class="title ">Title</form:label>
            </td>
            <td>
                <form:input path="title"></form:input>
            </td>
            <td>
                <form:errors path="title"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description">Description</form:label>
            </td>
            <td>
                <form:textarea path="description" cols="40" rows="25"></form:textarea>
            </td>
            <td>
                <form:errors path="description"></form:errors>
            </td>
        </tr>
        <tr>
            <td>
                <label>Actions</label>
            </td>
            <td>
                <form:button class="glow-on-hover" name="cancel">Cancel</form:button>
                &nbsp;
                <input type="submit" class="glow-on-hover"name="submit" value="Submit">
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
