<?php


$host ="localhost";
$user ="pharmacy";
$password= "B3Cb5YYZgZgDMFHs";
$dbname = "pharmacyDB";


$con =mysqli_connect($host,$user,$password,$dbname);

if(!$con){

	echo mysqli_connect_error($con);
}

?> 
