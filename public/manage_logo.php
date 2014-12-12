<?php require_once("../includes/session.php"); ?>
<?php require_once("../includes/db_connection.php"); ?>
<?php require_once("../includes/functions.php"); ?>
<?php require_once("../includes/validation_functions.php"); ?>

<?php
	if(isset($_POST['submit'])){
			
			$file_name = $_FILES['images']['name'];
			$file_size = $_FILES['images']['size'];
			$file_tmp = $_FILES['images']['tmp_name'];

			$file_ext = strtolower(end(explode(".",$file_name)));
			$ext_boleh = array("jpg","jpeg","png","gif","bmp");

			if(in_array($file_ext,$ext_boleh)){
				//EXT FILE DIPERBOLEHKAN
				
				if($file_size<=2*1024*1024){
					// move file to new directory
					
					$sumber=$file_tmp;
					$tujuan="images/" . $file_name;
					move_uploaded_file($sumber,$tujuan);
					
					$query="UPDATE logo SET file = '{$tujuan}' WHERE id = 1";  
					$result = mysqli_query($connection,$query);
					
					if($result){
						// Success
						$_SESSION["message"] = "Upload Logo Success.";
						redirect_to("manage_logo.php");
					}else{
						// Failure
						$_SESSION["message"] = "Upload Logo Failed.";
					}	
					
				}else{
					$_SESSION["message"] = "The size of the image is too big . MAX 2 MB.";
					redirect_to("manage_logo.php");
				}
			}else{
				$_SESSION["message"] = "The kind of file which is allowed is image.";
				redirect_to("manage_logo.php");
			}			
	}	
?>

<?php $layout_context = "admin"; ?>
<?php include("../includes/layouts/header.php");?>

<div id="main">
	<div id="navigation">
		<br/>
		<a href="admin.php">&laquo; Main Menu</a><br />
	</div><!--#navigation-->
	<div id="page">
		<?php echo message(); ?>
		
		<h2>Edit Logo</h2>
		<form action="manage_logo.php" method="POST" enctype="multipart/form-data">
			<input type="file" name="file" />	   <br/>
			<input type="submit" name="submit" value="Save" />   
		</form>
		<br />
	</div><!--#page-->
</div><!--#main-->

<?php include("../includes/layouts/footer.php"); ?>