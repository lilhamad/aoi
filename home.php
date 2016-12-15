<?php
session_start();
include('conn.php');
$date=date('M, d Y');
if(!isset($_SESSION['student_id'])){header('location:index.php');}
	$id=$_SESSION['student_id'];
$sql=mysql_query("select * from users where user_id='$id' ");$row=mysql_fetch_array($sql);
include('msg.php');
//Selecting departments
$sqd=mysql_query("select * from course");
//
$SQAL = mysql_query("SELECT * FROM `alert` WHERE `to` = '$id' and opened='0'");
$cal=mysql_num_rows($SQAL);
$sqs=mysql_query("select * from payment where user_id='$id' ");
$cto=mysql_num_rows($sqs);
//
$sqii=mysql_query("select a.user_id,a.course_id,b.course_id,b.status,b.lecture_num from payment a, lecture b where  a.user_id='$id' and b.course_id=a.course_id and b.status=1");
$act=mysql_num_rows($sqii);
//
?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI- Student home page</title>
<!-- HEADER -->
<?php include('header_students.php'); ?>
<!-- -->
<!-- HEADER -->
<?php include('nav_students.php'); ?>
<!-- -->
<div class="container">

<div class="row">
<div class="col-md-12">
<h4>My home page <img src="img/home_icon.jpg" width="30px;"></h4>
 </div>
<!-- =========================Start Col left section ============================= -->
<aside  class="col-md-4 col-sm-4">
	<div class="col-left">
    	<h3>Menu</h3>
            <ul class="submenu-col">
                <li><a href="index.php" id="active">Home</a></li>
                <li><a href="news.php">News</a></li>
                <li><a href="#">Message (0) <img src="img/new.png" alt="New"></a></li>
                <li><a href="#">Alert (0) </a></li>
                <li><a href="#">Board</a></li>
                <li><a href="#">Lecturers </a></li>
                <li><a href="#">Courses </a></li>
                <li><a href="logout.php">Logout </a></li>

            </ul>
            
            <hr>
            
            
            
    </div>
    <p><img src="img/banner.jpg" alt="Banner" class="img-rounded img-responsive" ></p>
</aside>
 
<section class="col-md-8 col-sm-8">
	<div class="col-right">
    	
    	    <?php while($rod=mysql_fetch_array($sqd)){ 

    	    $catid=$rod['category']; 
    	    $coid=$rod['course_id'];
			$sqcat=mysql_query("select * from category where category_id='$catid'");
			$rocat=mysql_fetch_array($sqcat);
    	    $sqco=mysql_query("select * from video where course_id ='$coid'"); 
    	    $rocourse=mysql_fetch_array($sqco);
    	    ?>
            <div class="strip-courses gray">
       		 <div class="title-course">
   			   <h3><?php echo $rod['course_title']; ?> </h3>
               <ul >
               		<li><i class=""></i><?php echo $rocat['category']; ?> Class</li>
                    <li><i class="icon-bookmark"></i> ID: 012</li>
               </ul>
             </div>
                <div class="description">
                	<div>
                	<img src="img/icon-play.png" width="50%">
                	</div>
                	<h5> Description</h5>
                    <?php echo $rod['brief'] ; ?>
                    <a href="course-detail.html" class="button_medium button-align-2">Watch the first video for free</a>
                    <a href="course-detail.html" class="button_medium button-align-2">Download the first video for free</a>
                </div>
            </div><!-- end strip-->
            <?php } ?>
            
             <hr>
           
           <div class="text-center">
               <ul class="pagination">
                    <li><a href="#">Prev</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">Next</a></li>
              </ul>
          </div><!-- end pagination-->
           
    </div><!-- end col right-->
	
</section>

  </div><!-- end row-->
  </div> <!-- end container-->

 <?php include('footer_students.php');?>
</body>
</html>