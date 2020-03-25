<?php
$conn = mysqli_connect('localhost', 'root', '', 'jck_kcomputers');

//check connection
if(!$conn){
    echo 'Connection error: ' . mysqli_connect_error();
}
?>