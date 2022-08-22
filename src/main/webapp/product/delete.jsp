<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting product</title>
</head>
<body>
<h1>Delete product</h1>
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
                <td>${product.name}</td>
            </tr>
            <tr>
                <td>Price: </td>
                <td>${product.price}</td>
            </tr>
            <tr>
                <td>Description: </td>
                <td>${product.description}</td>
            </tr>
            <tr>
                <td>Manufacturer: </td>
                <td>${product.manufacturer}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete product"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>