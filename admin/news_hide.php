<?php
include('../conn.php');
$id=$_GET['id']; 
 mysql_query("UPDATE news set visibility=0 where news_id=$id");
if(isset($_SERVER["HTTP_REFERER"])){
 header("Location:".$_SERVER["HTTP_REFERER"]);
 }
?>