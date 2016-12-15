<?php
include('../conn.php');
$id=$_GET['id'];
 mysql_query("DELETE from news where news_id=$id");
 header('Location:manage_news.php');
?>