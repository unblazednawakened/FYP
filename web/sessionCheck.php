<?php
    session_start();
    if(!isset($_SESSION['user_id'])){
		 echo isset($_SESSION['user_id']);
    }else{
		 header("location: login.php");
	 }
?>
