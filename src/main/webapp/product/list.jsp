<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<html>
<head>
    <title>Products</title>
</head>
<body>
<h1>Products</h1>

<table class="table table-striped">
    <tr>
        <th class="table-success">Id</th>
        <th class="table-danger">Name</th>
        <th class="table-info">Price</th>
        <th class="table-warning">Description</th>
        <th class="table-primary">Manufacturer</th>
        <td class="table-light">Edit</td>
        <td class="table-light">Delete</td>
    </tr>
    <c:forEach var="product" items="${dssp}">
        <tr>

            <td>${product.id}</td>
            <td> <a href="/product?action=detail&id=${product.id}">${product.name}</a> </td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.manufacturer}</td>
            <td><a href="/product?action=edit&id=${product.id}"><input type="submit" value="Edit" class="btn btn-primary"></a></td>
            <td><a href="/product?action=delete&id=${product.id}"><input type="submit" value="Remove" class="btn btn-secondary"></a></td>
        </tr>
    </c:forEach>
</table>

<a href="/product?action=create">Create new product</a>

</body>
</html>
