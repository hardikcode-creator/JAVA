
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page  isELIgnored = "false"%>
<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

  <title><c:out value='${title}'>Product Page</c:out></title>
</head>
<body>
<form class=" mx-auto border rounded p-5 w-75 mt-5 " action="${pageContext.request.contextPath}/submit" method="post" >
<input type="hidden" value="${product.id}" name="id"/>
  <div class="form-group" >
    <label for="name">Name</label>
    <input type="text" name="name" class="form-control" id="name" placeholder="Enter your name"  value="${product.name}">
  </div>
  <div class="form-group" >
      <label for="description">Description</label>
     <textarea name="description" class="form-control" id="description" rows="3">${product.description}</textarea>
    </div>


  <div class="form-group">
    <label for="price">Price</label>
    <input type="text" name="price" class="form-control" id="price" value="${product.price}"></p>
  </div>

<a href="${pageContext.request.contextPath}/" class="btn btn-outline-dark">Back</a>
  <button class="btn btn-primary" type="submit">Update Product</button>

</form>

<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
</body>
</html>