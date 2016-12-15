<?php
session_start();
include('conn.php');
$sid=$_GET['sid'];
$date=date('M, d Y');

if(!isset($_SESSION['admin_id'])){echo '<script type="text/javascript">window.location="index.php?msg=1"</script>';}

$sqi=mysql_query("select * from users where rank =0 and user_id='$sid'");
$row=mysql_fetch_array($sqi);
$fname=$row['firstname'].' '.$row['lastname'];
$phone=$row['phone'];
$mail=$row['mail'];
?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]--><head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI student info</title>
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
    <center><h6>Admin</h6></center><font color=""><center><h5><h4><?php echo $_SESSION['admin_name'];?></h5></center></font>
</div>
    <div class="col-left">
        <h3>Details</h3>
            <ul class="submenu-col">
                <li><a href="home.php"  >Home</a></li>
                <li><a href="view_students.php" id="active">Student(<?php echo $counts; ?>)</a></li>
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
            <h3><font color='redd'>Log</font></h3>
            <ul class="submenu-col">
                <li><a href="logout.php">Log out <?php echo $full_n; ?>   </a></li>
            </ul>
          
            
    </div>
    
</aside>
 
<section class="col-md-8 col-sm-8">
    <div class="col-right">
    <h4>Title</h4>
    <div> <img src="<?php echo $row['image']; ?>" style="border-radius: 50% 50%;" width="20%" ></div>
    <h5>
      <div align="left">Full name</div> <div align="right"> <?php  echo $row['firstname']." ".$row['lastname'];  ?></div><br>
      <div align="left">Phone</div> <div align="right"> <?php  echo $row['phone'];?></div>
      <div align="left">Email</div> <div align="right"> <?php  echo $row['email'];?></div>
      <div align="left">Status</div> <div align="right"> <?php  if($roh['status']==1){echo "<font color='#009900'>Activate</font>";} else echo "<font color='#CC3300'>Deactivated</font>"; ?></a></div>
      <div align="left">Gender</div> <div align="right"> <?php  echo $row['gender'];?></div>
      <div align="left">Been around since</div> <div align="right"> <?php  echo $row['date'];?></div>
      </h5>
</section>

  </div><!-- end row-->
  </div> <!-- end container-->

  
  <!-- HEADER -->
<?php include('footer.php'); ?>
<!-- -->
<!-- NAV -->
</body>
</html>