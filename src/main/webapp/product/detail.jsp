<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/product?action=alo">Back to product list</a>
</p>
<table>
    <tr>
        <td>Id: </td>
        <td>${product.id}</td>
    </tr>
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
</table>
</body>
</html>