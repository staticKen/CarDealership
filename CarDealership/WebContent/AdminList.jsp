<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./styles/styler.css">
</head>
<body class="body">
<jsp:include page="header.jsp"/>
<h1 class="stylized">Inventory List</h1>
	<table class="table table-sm">
		<thead>
		<tr>
			<!-- "tr" represents a row -->
			<th>Image</th>
			<th>Year</th>
			<!-- use "th" to indicate header row -->
			<th>Make</th>
			<th>Model</th>
			<th>Price</th>
			<th>Inv. #</th>
			<th>Buyer</th>
			<th>Date of Sale</th>
			<th>Status</th>
		</tr>
		</thead>
			<!-- once again use tr for another row -->
			<c:forEach var="vehicle" items="${allCars}">
			<tr>
			<td><img src="${vehicle.img}" height="50" width="100"/></td>
			<!-- use "td" henceforth for normal rows -->
			<td><c:out value="${vehicle.year}"/></td>
			<td><c:out value="${vehicle.make}"/></td>
			<td><c:out value="${vehicle.model}"/></td>
			<td><c:out value="$${vehicle.price}0"/></td>
			<td><c:out value="${vehicle.carId}"/></td>
			<td><c:out value="${vehicle.buyer}"/></td>
			<td><c:if test="${not empty vehicle.buyer}">
			<c:out value="${vehicle.soldDate}"/></c:if> </td>
			<td><c:choose><c:when test="${not empty vehicle.buyer}">
			<c:out value="Sold"/>
			</c:when>
			<c:otherwise><c:out value="Available"/></c:otherwise>
			</c:choose></td>

 
   
</tr>
</c:forEach>
		
		
	</table>
</body>
</html>