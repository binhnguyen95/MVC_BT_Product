<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
  <title>Edit customer</title>
</head>
<body>
<h1>Edit customer</h1>
<p>
  <c:if test='${message != null}'>
    <span class="message">${message}</span>
  </c:if>
</p>
<p>
  <a href="/product?action=alo">Back to customer list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Product information</legend>
    <table>
      <tr>
        <td>Id: </td>
        <td><input type="text" name="id" id="id" value="${product.id}"></td>
      </tr>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name" value="${product.name}"></td>
      </tr>
      <tr>
        <td>Price: </td>
        <td><input type="text" name="price" id="price" value="${product.price}"></td>
      </tr>
      <tr>
        <td>Description: </td>
        <td><input type="text" name="description" id="description" value="${product.description}"></td>
      </tr>
      <tr>
        <td>Manufacturer: </td>
        <td><input type="text" name="manufacturer" id="manufacturer" value="${product.manufacturer}"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Update product"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>