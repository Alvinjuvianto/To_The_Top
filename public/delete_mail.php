<?php require_once("../includes/session.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>

<?php
	$contact = find_contact_by_id($_GET["id"]);
	if(!$contact){
		redirect_to("admin.php");
	}
	
	$id = $contact["id"];
	$query = "DELETE FROM contact WHERE id = {$id} LIMIT 1";
	$result = mysqli_query($connection, $query);
	
	if($result && mysqli_affected_rows($connection) == 1){
		// Success
		$_SESSION["message"] = "Mail Deleted.";
		redirect_to("mail.php");
	}else{
		// Failure
		$_SESSION["message"] = "Mail Deletion Failed.";
		redirect_to("mail.php");
	}
	
?>
