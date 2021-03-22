<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" 
rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="./styles/styler.css">
</head>
<body class="body">
<jsp:include page="header.jsp"/>
<div class = "container-1">
<div class="offer">
<h1>${msg}</h1>
<br>
<h1><a href="VehicleServlet" class="click-here-btn">Click Here</a> to return to Vehicle list.</h1>
</div>
</div>
</body>
</html>