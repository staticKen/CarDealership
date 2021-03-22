<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<%@ page import="com.inventory.Vehicle"%>
		<%@ page import="com.inventory.Inventory"%>
	
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	
	<c:forEach var="vehicle" items="${cars}">
		<div class="vehicle">
			<a target="_blank" href="VehicleDetailsServlet?carId=${vehicle.carId}"> <img
				src="${vehicle.img}" alt="${vehicle.make}" width="300" height="200">
			</a>
			<div class="desc">
				<c:out value="${vehicle.year}" />
				<c:out value="${vehicle.make}" />
				<c:out value="${vehicle.model}" />
				<br> Price: $
				<c:out value="${vehicle.price}0" />
				<br>



			</div>
		</div>
	</c:forEach>
	
</body>
</html>