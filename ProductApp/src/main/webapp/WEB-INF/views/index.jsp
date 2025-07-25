<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page  isELIgnored = "false"  %>

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

   <div class="container mt-3">
   <div class="row">
   <div class="col-md-12">
   <h1 class="text-center mb-3">Welcome to Product App</h1>
   <table class="table table-striped text-center">
     <thead>
       <tr>
         <th scope="col">ID</th>
         <th scope="col">Name</th>
         <th scope="col">Description</th>
         <th scope="col">Price</th>
         <th scope="col">Delete</th>
         <th scope="col">Edit</th>
       </tr>
     </thead>
     <tbody>
      <c:forEach items="${products}" var="p">
             <tr>
                     <th scope="row">${p.id}</th>
                     <td>${p.name}</td>
                     <td>${p.description}</td>
                     <td class="font-weight-bold">&#8377; ${p.price}</td>
                      <td>
                    <a href="deleteproduct/${p.id}">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash" viewBox="0 0 16 16">
                            <path d="M5.5 5.5A.5.5 0 0 1 6 6v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m2.5 0a.5.5 0 0 1 .5.5v6a.5.5 0 0 1-1 0V6a.5.5 0 0 1 .5-.5m3 .5a.5.5 0 0 0-1 0v6a.5.5 0 0 0 1 0z"/>
                            <path d="M14.5 3a1 1 0 0 1-1 1H13v9a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V4h-.5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1H6a1 1 0 0 1 1-1h2a1 1 0 0 1 1 1h3.5a1 1 0 0 1 1 1zM4.118 4 4 4.059V13a1 1 0 0 0 1 1h6a1 1 0 0 0 1-1V4.059L11.882 4zM2.5 3h11V2h-11z"/>
                          </svg>
                          </a>
                      </td>
                      <td>
                                          <a href="updateproduct/${p.id}">
                                          <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pen" viewBox="0 0 16 16">
                                            <path d="m13.498.795.149-.149a1.207 1.207 0 1 1 1.707 1.708l-.149.148a1.5 1.5 0 0 1-.059 2.059L4.854 14.854a.5.5 0 0 1-.233.131l-4 1a.5.5 0 0 1-.606-.606l1-4a.5.5 0 0 1 .131-.232l9.642-9.642a.5.5 0 0 0-.642.056L6.854 4.854a.5.5 0 1 1-.708-.708L9.44.854A1.5 1.5 0 0 1 11.5.796a1.5 1.5 0 0 1 1.998-.001m-.644.766a.5.5 0 0 0-.707 0L1.95 11.756l-.764 3.057 3.057-.764L14.44 3.854a.5.5 0 0 0 0-.708z"/>
                                          </svg>
                                                </a>
                                            </td>
             </tr>
      </c:forEach>

     </tbody>
   </table>
   <div class="container text-center">
   <a href="addProduct" class="btn btn-success">Add Product</a>
   </div>
   </div>
   </div>
   </div>
  </body>
</html>