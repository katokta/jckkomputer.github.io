<?php

    include('config/db_connect.php');
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	
	<title></title> 
</head>
<body>
	<section class="hero-section set-bg" data-setbg="img/1.jpg" style="background-image: url(img/1.jpeg);">
		<div class="container">
			<div class="hero-warp">
			<form class="main-search-form" >
					<div class="search-type">
						<div class="st-item">
							<input type="submit" name="laptop" id="laptop" formaction="laptop.php">
							<label for="laptop">Laptop</label>
						</div>
						<div class="st-item">
							<input type="submit" name="tower" id="tower" formaction="tower.php">
							<label for="tower">PC Tower</label>
						</div>
						<div class="st-item">
							<input type="submit" name="monitor" id="monitor" formaction="monitor.php">
							<label for="monitor">PC Monitor</label>
						</div>
						<div class="st-item">
							<input type="submit" name="accessories" id="accessories" formaction="accessories.php">
							<label for="accessories">Accessories</label>
						</div>                                                           
					</div>
					<form id="searchform">
					<div class="search-input">
						<input type="text" name="name" placeholder="Search Item">
						<button class="site-btn" type="submit" name="submit-search" value="Search" formaction="search.php" method="get">Search</button>
						<button class="site-btn-cata" formaction="catalogue.php" > All Catalogue </button>
					</div>
					</form>
					<p>Please Enter What Item/Spec</p>
				</form>
			</div>
		</div>
	</section>
	
</body>
</html>
