<?php require_once("../includes/session.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>

<?php
	$contact_set = find_all_contact();
?>

<?php $layout_context = "admin"; ?>
<?php include("../includes/layouts/header.php"); ?>

<div id="main">
	<div id="navigation">
		<a href="admin.php">&laquo; Main menu</a><br />
	</div><!--#navigation-->
	<div id="page">
	<?php echo message(); ?>
	<h2>Mail Box</h2>
	<table border="1">
		<tr>
			<td>No.</td>
			<td>Name</td>
			<td>Phone</td>
			<td>Email</td>
			<td>Message</td>
			<td>Drop</td>
		</tr>
		<?php while($contact = mysqli_fetch_assoc($contact_set)){?>
				<tr>
					<td><?php echo htmlentities($contact["id"]); ?></td>
					<?php
					echo "<td>" . $contact['name'] . "</td>";
					echo "<td>" . $contact['phone'] . "</td>";
					echo "<td>" . $contact['email'] . "</td>";
					echo "<td>" . $contact['message'] . "</td>";
					?>
					<td><a href="delete_mail.php?id=<?php echo urlencode($contact["id"]); ?>" onclick="return confirm('Are you sure?');">Delete</a></td>
				</tr>
			<?php } ?>
	</table>	
	</div><!--#page-->	
</div><!--#main-->
	
<?php include("../includes/layouts/footer.php"); ?>