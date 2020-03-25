<?php
    include('config/db_connect.php');
    //check get request id param
?>
<!DOCTYPE html>
<html lang="en">
<head>
     <script src="https://kit.fontawesome.com/a076d05399.js"></script>
     <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style2.css">   

	<title></title> 
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
    <h4 class="center grey-text">Computers!</h4>
    <div class="container">
        <div class="row">
        <?php
        if(isset($_GET['submit-search'])){
            $search = mysqli_real_escape_string($conn, $_GET['name']);
            $sql = "SELECT * FROM table_purchasing_order INNER JOIN table_stock ON table_purchasing_order.purchasing_id = table_stock.purchasing_id 
                    INNER JOIN table_stock_detail ON table_stock_detail.stock_id=table_stock.stock_id  
                    WHERE product_type LIKE '%$search%' OR product_brand LIKE '%$search%' OR
                    product_name LIKE '%$search%' OR stock_specification LIKE '%$search%'";
            $result = mysqli_query($conn, $sql);
            $queryresult= mysqli_num_rows($result);

            if($queryresult>0){
                while ($row = mysqli_fetch_assoc($result)){
                    echo "<div>
                    <h3>".$row['product_brand']."</h3>
                    <p>".$row['product_name']."</p>
                    <p>".$row['product_type']."</p>
                    <p>".$row['stock_specification']."</p>
                    </div>";
                }
            } else {
                echo "There are no results matching your search!";
            }
        }
?>
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
