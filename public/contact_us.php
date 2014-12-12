<?php require_once("../includes/session.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php require_once("../includes/validation_functions.php"); ?>

<?php
	if(isset($_POST['submit'])){
		// Process the form		
		
		// validations 
		$required_fields = array("name","phone","email","message");
		validate_presences($required_fields);
		
		$fields_with_max_lengths = array("name" => 30);
		validate_max_lengths($fields_with_max_lengths);
		
		if(empty($errors)){
			// Perform Update	
			
			// make sure you add the id!
			$name = mysql_prep($_POST["name"]);
			$phone = mysql_prep($_POST["phone"]);
			$email = mysql_prep($_POST["email"]);
			$message = mysql_prep($_POST["message"]);
			
			$query = "INSERT INTO contact (";
			$query .= " name, phone, email, message";
			$query .= ") VALUES (";
			$query .= "'{$name}', '{$phone}', '{$email}', '{$message}'";
			$query .= ")";
			$result = mysqli_query($connection,$query);
			
			if($result){
				// Success
				$_SESSION["message"] = "Your message has been sent.";
				redirect_to("contact_us.php");
			}else{
				// Failure
				$_SESSION["message"] = "Failed .";
			}		
		}
	}	
?>

<?php $layout_context = "public"; ?>
<?php include("../includes/layouts/header.php"); ?>
<div id="main">
	<div id="navigation">
		<a href="index.php">&laquo; Back To Home</a><br />
	</div><!--#navigation-->
	<div id="page">
		<?php echo message(); ?>
		<?php echo form_errors($errors); ?>
	
	<h2>Create Page:</h2>
	<form action="contact_us.php?>" method="post">
		<table>
			<tr>
			  <td width="114">Name</td>
			  <td width="279"><label>
				<input type="text" name="name" value="" />
			  </label></td>
			</tr>
			<tr>
			  <td>Email</td>
			  <td><label>
				<input type="text" name="email" value=""/>
			  </label></td>
			</tr>
			<tr>
			  <td>Phone Number </td>
			  <td><label>
				<input type="text" name="phone" value=""/>
			  </label></td>
			</tr>
			<tr>
			  <td>Massage</td>
			  <td><label>
				<textarea name="message" cols="40" rows="7"></textarea>
			  </label></td>
			</tr>
		</table>		
		<table >
			<tr>			 
				<td width="217"><input type="submit" name="submit" value="Send" /></td>
				<td width="217"><input type="reset" name="reset" value="Reset" /></td>
			</tr>
		</table>
		<p>&nbsp;</p>
	</form>
	<br />
	</div><!--#page-->	
</div><!--#main-->
	
<?php include("../includes/layouts/footer.php"); ?>	
