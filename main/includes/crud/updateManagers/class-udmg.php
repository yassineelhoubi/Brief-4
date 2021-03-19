<?php

if (isset($_POST["submit"])) {
	
	$classesId = $_POST["classesId"];
	$classesName = $_POST["classesName"];

	require_once '../../dbh-inc.php';

	$sql = "UPDATE classes SET classesName = ? WHERE classesId = ?";
	$stmt = mysqli_stmt_init($conn);
	
	if (!mysqli_stmt_prepare($stmt, $sql)) {
		header("location: ../../../dboard_admin.php?error_stmtfailure");
		exit();
	}

	mysqli_stmt_bind_param($stmt, "si", $classesName, $classesId);
	mysqli_stmt_execute($stmt);
	mysqli_stmt_close($stmt);
	header("location: ../../../dboard_admin.php?error=noene");
	exit();

} else if (isset($_POST["delete"])) {
	$classesId = $_POST["classesId"];

	require_once '../../dbh-inc.php';

	$sql = "DELETE FROM classes WHERE classesId = ?";
	$stmt = mysqli_stmt_init($conn);
	
	if (!mysqli_stmt_prepare($stmt, $sql)) {
		header("location: ../../../dboard_admin.php?error_stmtfailure");
		exit();
	}

	mysqli_stmt_bind_param($stmt, "i", $classesId);
	mysqli_stmt_execute($stmt) or die(
		header("location: ../../../dboard_admin.php?error=classhasstudents")
	);
	mysqli_stmt_close($stmt);
	header("location: ../../../dboard_admin.php?error=none");
	exit();
}

?>