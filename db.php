<?php
$mysqli = mysqli_connect("localhost","team12","team12","team12");
//mysql connection 여부
if (mysqli_connect_errno()) {
	printf("Connect failed: %s\n",mysqli_connect_error());
exit();
}
?>