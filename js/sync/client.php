<?php

include ("connect.php");

// open csv file
$fp = fopen($filename, "r");

// parse the csv file row by row
while(($row = fgetcsv($fp, "500", ",")) != FALSE){
	//insert csv data into the mysql table
	// ---------- code ------------
	if(!mysqli_query($connection, $sql)){
		die('Error : '. mysqli_error());
	}
}

fclose($fp);

?>