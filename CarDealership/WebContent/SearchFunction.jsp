<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="./styles/styler.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>
<body class="body">
<jsp:include page="header.jsp"/>
<p>
<c:out value="${count}"/> result(s) found</p>
	<c:forEach var="vehicle" items="${vehiclesearch}" >
		<div class="vehicle-contain">
		<div class="gallery">
			<a target="_blank"  href="VehicleDetailsServlet?carId=${vehicle.carId}"> 
			<img src="${vehicle.img}" alt="${vehicle.make}" width="300" height="200" >
			</a>
			<div class="desc">
			<c:out value ="${vehicle.days}"/>
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
				Price: $<c:out value="${vehicle.price}" />
				</div>
				<br>
				<a target="_blank"  href="VehicleDetailsServlet?carId=${vehicle.carId}">
					<button  class="btn btn-dark search-button colors" type="button" name="detail" class="" value="">See Details</button></a>
				 <c:if test = "${car.getDays() >= 120}">
       <a target="_blank"  href="DetailsServlet?carId=${car.carId}">  <button type="button" class="btn btn-dark search-button colors">Best Offer</button></a>
     			 </c:if>
				</div>
		</div>
		</div>
	</c:forEach>
      
</body>
</html>