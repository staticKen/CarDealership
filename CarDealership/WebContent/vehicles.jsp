<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">
<link rel="stylesheet" href="./styles/styler.css">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body class="body">

	<jsp:include page="header.jsp" />
<h1 class="stylized">Vehicle List</h1>
	<div class="centered">

		<c:forEach var="vehicle" items="${cars}">
			<div class="vehicle-contain">
				<a target="_blank"
					href="VehicleDetailsServlet?carId=${vehicle.carId}"> 
					<img src="${vehicle.img}" alt="${vehicle.make}" title="${vehicle.make}" width="275" height="200" /></a>
				<div class="desc">
					<c:out value="Days on Market: ${vehicle.days}"/>
					<br>
					<c:out value="${vehicle.year}" />
					<c:out value="${vehicle.make}" />
					<c:out value="${vehicle.model}" />
					<br> 
					<div class="rate" id="${vehicle.carId}">
  	  				<input type="radio" id="star5" name="rate${vehicle.carId}" value="5" />
    				<label for="star5" title="text">5 stars</label>
    				<input type="radio" id="star4" name="rate${vehicle.carId}" value="4" />
    				<label for="star4" title="text">4 stars</label>
    				<input type="radio" id="star3" name="rate${vehicle.carId}" value="3" />
    				<label for="star3" title="text">3 stars</label>
    				<input type="radio" id="star2" name="rate${vehicle.carId}" value="2"  />
    				<label for="star2" title="text">2 stars</label>
    				<input type="radio" id="star1" name="rate${vehicle.carId}" value="1" checked />
    				<label for="star1" title="text">1 star</label>
  					</div>
					
					<div class="price">
						Price:
						<c:out value="$${vehicle.price}0" />
					</div>
					<br>
					<a target="_blank"  href="VehicleDetailsServlet?carId=${vehicle.carId}">
					<button  class="btn btn-dark search-button colors" type="button" name="detail" value="">See Details</button></a>
 <c:if test = "${vehicle.getDays() >= 120}">
       <a target="_blank"  href="BestOfferServlet?carId=${vehicle.carId}">  <button type="button" class="btn btn-dark search-button colors">Best Offer</button></a>
     			 </c:if>
				</div>

			</div>
		</c:forEach>


	</div>

</body>
</html>