<?php
include('conn.php');
$id=$_GET['id']; 

 mysql_query("UPDATE users set status=1 where user_id=$id");if(isset($_SERVER["HTTP_REFERER"])){
 header("Location:".$_SERVER["HTTP_REFERER"]);
 }
?>