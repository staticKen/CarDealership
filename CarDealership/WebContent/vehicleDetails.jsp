<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./styles/styler.css">
   

    <!-- Custom styles for this template -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="utf-8">
<title>Vehicle Details</title>

</head>
<body class="body">
<jsp:include page="header.jsp"/>
<p>
<h1 class="stylized">Vehicle Details</h1>
<div class="detailcontainer">
<div class="galler">
<img src="${myvehicle.img}" width="100" height="100">

	</div>
<div class="tabledetail">

			<table class="table table-striped">
<!--String year, String make, String model, String milesDriven, String newOrUsed, String img, String description, String price, String carId-->
				<thead>
					<tr>
						<th scope="col">Desc</th>
						<th scope="col">Details</th>

					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="col">Inventory#</th>
						<td>${myvehicle.carId}</td>
					</tr>
					
					<tr>
						<th scope="col">New or Used</th>
						<td>${myvehicle.newOrUsed}</td>
					</tr>
					
					<tr>
					<th scope="col">Year</th>
					<td>${myvehicle.year}</td>
					</tr>					
										
					<tr>
						<th scope="col">Make</th>
						<td>${myvehicle.make}</td>
					</tr>
					<tr>
						<th scope="col">Model</th>
						<td>${myvehicle.model}</td>
					</tr>

					<tr>
						<th scope="col">Description</th>
						<td>${myvehicle.description}</td>
					</tr>
					<tr>
						<th scope="col">Milage</th>
						<td>${myvehicle.milesDriven}</td>
					</tr>
					<tr>
						<th scope="col">Price</th>
						<td>$${myvehicle.price}0</td>
					</tr>
					<tr>

					</tr>

				</tbody>

			</table>
			<form class="form-inline" method="get" action="BuyVehicleServlet">
			<input class="form-control mr-sm-2" id="offer" name="carId" value="${myvehicle.carId}" type="hidden" aria-label="offer">
					<input class="form-control mr-sm-2" id="offer" name="price" value="${myvehicle.price}" type="hidden" aria-label="offer">
			<input class="form-control mr-sm-2" id="offer" name="name"  type="text" placeholder="Input your name..."
			aria-label="offer"> 
			<a>  <button type="submit" class="btn btn-dark search-button buy-vehicle-btn colors">Buy Vehicle</button></a>
</form>
		</div>
		</div>
</body>
</html>