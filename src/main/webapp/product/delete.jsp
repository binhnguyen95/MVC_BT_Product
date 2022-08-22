<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting customer</title>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="${pageContext.request.contextPath}/product?action=alo">Back to product list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Product information</legend>
        <table>
            <tr>
                <td>Name: </td>
                <td>${requestScope["product"].name()}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${requestScope["product"].price()}</td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>${requestScope["product"].description()}</td>
            </tr>
            <tr>
                <td>Manufacturer: </td>
                <td>${requestScope["product"].manufacturer()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
                <td><a href="${pageContext.request.contextPath}/product?action=alo">Back to product list</a></td>
            </tr>
        </table>
    </fieldset>
</body>
</html>