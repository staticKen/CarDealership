<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<%@ page import="com.inventory.Vehicle"%>
		<%@ page import="com.inventory.Inventory"%>
  
<!DOCTYPE html>
<html>
<head>

<link rel="stylesheet" href="./styles/styler.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="body">
<jsp:include page="header.jsp"/>
<h1 class="stylized">Vehicle Details</h1>
<!-- show vehicle up for bid, current asking price, current bid, enter bid here *cannot be below 90 percent of asking price, submit, onclick we 
change current bid as long as price is greater than current bid-->

<div class="detailcontainer">
<div class="galler">
<img src="${vehicle.img}" width="200" height="200">

	
	</div>

			
<!--  String year, String make, String model, String milesDriven, String newOrUsed, String img, String description, String price, String carId-->	
						<h1>Inventory# <c:out value="${vehicle.carId}"/></h1>
				<h1>Price of Vehicle: <c:out value="$${vehicle.price}0"/></h1>
					<div>
					<form class="form-inline" method="get" action="OfferServlet">
					<input class="form-control mr-sm-2" id="offer" name="carId" value="${vehicle.carId}" type="hidden" aria-label="offer">
					<input class="form-control mr-sm-2" id="offer" name="price" value="${vehicle.price}" type="hidden" aria-label="offer">
					<input class="form-control mr-sm-1" id="offer" name="offer"  type="number" placeholder="Place Your Bid..."
			aria-label="offer"> 
			<input class="form-control mr-sm-1" id="offer" name="name"  type="text" placeholder="Input your name..."
			aria-label="offer"> 
			
		<button class="btn btn-dark search-button colors offer-btn" type="submit">Submit</button>
		
				</form>
				
				
		</div>
	
		</div>

</body>
</html>