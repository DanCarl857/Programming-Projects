<?php

	// mysql database connection details
	$host = "localhost";
	$username = "root";
	$password = "mysql";
	$dbname = "syncTest";

	// open connection to mysql database
	$connection = mysqli_connect($host, $username, $password, $dbname) or die("Connection Error " . mysqli_error($connection));

?>