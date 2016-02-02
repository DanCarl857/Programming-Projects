<?php

	include("connect.php");

	// fetch mysql table rows
	$sql = "select * from test_server";
	$result = mysqli_query($connection, $sql) or die("Selection error". mysqli_error($connection));

	// put data in csv file
	$fp = fopen('data.csv', 'w');

	while($row = mysqli_fetch_assoc($result)){
		fputcsv($fp, $row);
	}

	fclose($fp);

	mysqli_close($connection);
?>