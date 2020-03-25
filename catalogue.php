<?php

    include('config/db_connect.php');
    //check get request id param
    $sql= 'SELECT product_brand, product_name, product_type FROM table_purchasing_order ORDER BY purchasing_id';
    $result = mysqli_query($conn, $sql);
    $pizzas = mysqli_fetch_all($result, MYSQLI_ASSOC);
                
    //free result from memory
    mysqli_free_result($result);

    //close connection
    mysqli_close($conn);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>JCK Komputer-Catalogue</title> 
     <script src="https://kit.fontawesome.com/a076d05399.js"></script>
     <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style2.css">
</head>
<body>
     <div class="wrapper d-flex align-items-stretch">
			<nav id="sidebar">
				<div class="custom-menu">
					<button type="button" id="sidebarCollapse" class="btn btn-primary">
	          <i class="fa fa-bars"></i>
	          <span class="sr-only">Toggle Menu</span>
	        </button>
        </div>
 	<div class="p-4 pt-5">
		  		<h1><a href="index.php" class="logo">JCK KOMPUTER</a></h1>
	        <ul class="list-unstyled components mb-5">
	          <li>
	              <a href="index.php">Home</a>
	          </li>
	          <li>
              <a href="#pageSubmenu" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle">Product</a>
              <ul class="collapse list-unstyled" id="pageSubmenu">
                <li>
                    <a href="laptop.php"> Laptop </a>
                </li>
                <li>
                    <a href="tower.php">Pc Tower</a>
                </li>
                <li>
                    <a href="accessories.php">Accessories</a>
				</li>
				<li>
                    <a href="monitor.php">Monitor</a>
                </li>
              </ul>
	          </li>
	          <li>
              <a href="#">Contact</a>
	          </li>
	        </ul>
	      </div>
        </nav>
       
      <div id="content" class="p-4 p-md-5 pt-5">

        <h2 class="mb-4">All Catalogue</h2>
    <div class="container">
        <div class="row">
            <?php foreach($pizzas as $pizza){ ?>
            <div class="p-4 p-md-5 pt-5">
                <div class="card z-depth-0">
                <div class="card-content center">
                    <h6><?php echo htmlspecialchars($pizza['product_brand']); ?></h6>
                    <div><?php echo htmlspecialchars($pizza['product_name']); ?></div>
                </div>
                <div class="card-action right-align">
                    <a class="brand-text" href="#">more info</a>
                </div>
                </div>
            </div>
            <?php } ?>
        </div>
            </div>
            </div>
    </div>
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
</body>
</html>


	