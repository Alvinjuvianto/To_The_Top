		<div id="footer">&copy Copyright <?php echo date("Y"); ?>, Jojovin</div><!--#footer-->
		
	</body>
</html>
<?php
	//5. Close database connection
	if(isset($connection)){
		mysqli_close($connection);
	}
?>