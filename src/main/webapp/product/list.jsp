<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Products</title>
</head>
<body>
<table border="1px">
    <tr>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Description</th>
        <th>Manufacturer</th>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach var="product" items="${dssp}">
        <tr>
            <td>${product.id}</td>
            <td>${product.name}</td>
            <td>${product.price}</td>
            <td>${product.description}</td>
            <td>${product.manufacturer}</td>
            <td><a href="/customer?action=edit&id=${product.id}">edit</a></td>
            <td><a href="/customer?action=delete&id=${product.id}">delete</a></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>
