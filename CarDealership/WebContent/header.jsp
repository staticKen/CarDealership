
<nav class=" navbar navbar-expand navbar-dark bg-dark trans "
	aria-label="Second navbar example">
	<div class="header container-fluid mb-auto">
		<a class="navbar-brand colors link" href="index.jsp"><img src=".\\img\\better_car.png"></a>
		<button class="navbar-toggler" data-bs-toggle="collapse"
			data-bs-target="#navbarsExample02" aria-controls="navbarsExample02"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarsExample02">
			<ul class="navbar-nav me-auto">
				<li class="nav-item "><a class="nav-link active colors link"
					aria-current="page" title="vehicles" href="vehicles.jsp">View
						Vehicles</a></li>
				<li class="nav-item"><a class="nav-link colors link" href="AdminList.jsp">Admin</a></li>
			
</ul>
			
		<!-- 		<form class="form-inline" method="post" action="SearchVehicleServlet">
		<input class="form-control mr-sm-2" name="search" type="search" placeholder="Search make/model"
			aria-label="Search">
		<button class="btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	</form>
	-->
			<div class= "fixed-class">
		  <form method="post" action="SearchVehicleServlet">
				
				<a><select class="drops" name="search" id="search">
					<option value="" disabled selected>Select Make</option>
					<option value="ford">Ford</option>
					<option value="mazda">Mazda</option>
					<option value="chevy">Chevy</option>
					<option value="toyota">Toyota</option>
					<option value="bmw">BMW</option>
					<option value="gmc">GMC</option>
					<option value="tesla">Tesla</option>
					
				</select></a>
				<div class="button-padding">
				<a><button class="btn btn-dark search-button colors" type="submit">Search</button></a>
				</div>
			</form>
			</div>


		</div>
	</div>
</nav>