<?php
session_start();
include('conn.php');
$date=date('M, d Y');
if(!isset($_SESSION['admin_id'])){echo '<script type="text/javascript">window.location="index.php?msg=1"</script>';}

$id=$_SESSION['admin_id'];
$sql=mysql_query("select * from users where user_id='$id' ");$row=mysql_fetch_array($sql);
$_SESSION['admin_name']=$row['firstname']." ".$row['lastname'];
$_SESSION['admin_phone']=$row['phone'];
 ?>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]--><head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI - Admin Home page</title>
<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
<?php include('nav.php'); ?>
<!-- -->

<div class="container">

<div class="row">
<div class="col-md-12">
<h3>&nbsp;&nbsp;&nbsp;Administration page</h3>

<!-- =========================Start Col left section ============================= -->
<aside  class="col-md-4 col-sm-4">
<div class="col-left">
    <font><center><h6>Admin</h6></center><h4><?php echo $row['firstname']." ".$row['othername'];?></h4></font>
</div>
    <div class="col-left">
        <h3>Common</h3>
            <ul class="submenu-col">
                <li><a href="home.php" id="active" >Home</a></li>
                <li><a href="view_students.php">Student(<?php echo $counts; ?>)</a></li>
                <li><a href="#">Lecturers(<?php echo $countl; ?>)</a></li>
                <li><a href="#">AOI BOARD(<?php echo $countb; ?>) </a></li>
                <li><a href="#">Courses(<?php echo $countu; ?>) </a></li>
                <li><a href="result_check.php">Surgestion</a></li>
            </ul>
            
            <hr>
            
            <h3>Post news</h3>
            <ul class="submenu-col">
                <li><a href="post_news.php" >Post news</a></li>
            </ul>
            
            <h3>Add</h3>
            <ul class="submenu-col">
                <li><a href="#">Add lecturer </a></li>
                <li><a href="#">Add new Board menber </a></li>
                <li><a href="#">Add Courses </a></li>
                <li><a href="#">Create new board post </a></li>
                <li><a href="reg.php">Add Students </a></li>
            </ul>
            
            <hr>

            <h3>Manage</h3>
            <ul class="submenu-col">
                <li><a href="manage_news.php">Manage news </a></li>
                <li><a href="#">Manage testimony </a></li>
                <li><a href="#">Manage welcome note </a></li>
                <li><a href="#">Manage display/Advert imge on home page </a></li>
                <li><a href="reg.php">Manage Display/Advert image on news page </a></li>
            </ul>
            
            <hr>
            <h3><font color='red'>Confidential</font></h3>
            <ul class="submenu-col">
                <li><a href="#">Open/Close portal  </a></li>
                <li><a href="#">End or Start a new session </a></li>
            </ul>
            
            <hr>
            <h3><font>Log</font></h3>
            <ul class="submenu-col">
                <li><a href="logout.php">Log out <?php echo $full_n; ?>   </a></li>
            </ul>
            
           
</aside>
 
<section class="col-md-8 col-sm-8">
    <div class="col-right">
    <h4></h4>
        <h1>Welcome dear admin this is the behind the screen goes. You are the boss here Sheik <?php echo $row['firstname']." ".$row['othername'];?> </h1>
        -manage news now working
        <br>
        -View student also
    
</section>

  </div><!-- end row-->
  </div> <!-- end container-->

  
  <!-- HEADER -->
<?php include('footer.php'); ?>
<!-- -->
<!-- NAV -->
</body>
</html>