<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang=en class="h-100">
<head>

<link rel="stylesheet" href="./styles/styler.css">
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="utf-8">
  <style>
    body {
      background-image: url(.\\img\\home-page.jpg) !important
    }
  </style>
<title>Inventory List</title>
</head>
<body class="d-flex h-100 text-center text-white bg-dark">

<div class="d-flex w-100 h-100 mx-auto flex-column">
     <header class="mb-auto">
    <div>
    <jsp:include page="header.jsp"/>
</div>
</header>
<jsp:include page="/VehicleServlet" />
<div class="box-color">
  <main class="px-3">
    <h1 class="font-color">HELLO.</h1>
    <p class="lead font-color">Welcome to the Generic Dealership. Explore our inventory for a sweet new ride.</p>
    <p class="lead view">
      <a href="vehicles.jsp" class="btn btn-dark search-button colors offer-btn">View Vehicles</a>
    </p>
  </main>
</div>
<div class="box-colors">
  <footer class="mt-auto black">
    <p>&copy; The Corporation est. 1993.</p>
    <p>*not actual corporation</p>
  </footer>
  </div>

</div>
</body>
</html>