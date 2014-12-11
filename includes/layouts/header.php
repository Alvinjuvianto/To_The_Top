<?php require_once("../includes/db_connection.php"); ?>
<?php
$query = "SELECT * FROM logo";
$result = mysqli_query($connection,$query);
?>
<?php 
	if(!isset($layout_context)){
		$layout_context = "public"; 
	}
?>
<!DOCTYPE html>
	
<html>
	<head>
		<title>Jojovin <?php if($layout_context == "admin"){echo "Admin";} ?></title>
		<link href="stylesheets/public.css" media="all" rel="stylesheet" type="text/css"/>
	</head>
	<body>
		<div id = "header">
		<div id="logo">
				<?php 
					while($line = mysqli_fetch_assoc($result)) {
				?>
				<a href="index.php"><img src="<?php echo $line['file']; ?>" /></a>
				<?php
					}
				?>
			</div>
			<div id="title"><h1>JOJOVIN <?php if($layout_context == "admin"){echo "Admin";} ?></h1></div>
			
			
			<div id="login">
				<?php
					if($layout_context == "admin"){
						echo "<a href=\"logout.php\">Logout</a>";
					}else{
						echo "<a href=\"contact_us.php\">Contact Us</a>";
						echo "<a href=\"login.php\">Login</a>";
					}
				?>	
			</div>
		</div><!--#header-->