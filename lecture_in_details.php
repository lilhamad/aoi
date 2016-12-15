<?php
session_set_cookie_params(3600 * 24 * 30);
session_start();
include('conn.php');
$date=date('M, d Y');
$time=date('h:i a');
$year=date('Y');
$key=$_GET['key'];
//echo $cid.' '.$lcn;
if(isset($_SESSION['student_id'])){$val='Ask..'; $nam='ask'; $lin='home.php';}	
if(isset($_SESSION['lect_id'])){$val='Answer..'; $nam='reply'; $lin='lecturer_home.php';
$stop=true;
}			   
//
$sqi2=mysql_query("select * from free_lecture limit 0, 20");

//selecting lecture
$sqi=mysql_query("select * from free_lecture where lecture_id='$key'");
$row=mysql_fetch_array($sqi);
$image=$row['image1'];
//setting

$sqc=mysql_query("select * from talk where lecture_id='$key'");
$count=mysql_num_rows($sqc);

$name=$_POST['name'];
$message=$_POST['message'];
$name=$_POST['name'];
if(isset($_POST['post'])){	
	$_SESSION['namy']=$name;
	$sqs=mysql_query("insert into talk (lecture_id,talk,username,date,time,session) VALUES ( '$key','$message','$name','$date','$time', '$year')");
	header("Location:lecture_in_details.php?key=".$key);
}
 ?>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI - LECTURE PAGE, TOPIC : <?php echo $row['topic']; ?></title>
<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
<?php include('nav.php'); ?>
<!-- -->
<div class="container">

<div class="row">    
	<!-- =========================Start Col right section ============================= -->
<section class="col-md-8 col-sm-8">
<div class="col-right">
	<div class="post">
		<h2><a href="#"><?php echo $row['topic'];  ?></a></h2>
<?php if(strlen($image)>2){ 
      echo "<img src='$image' class='img-responsive' width='948px' height='345px'>";
      }?>		<div class="post_info clearfix">
			<div class="post-left">
				<ul>
					<li><i class="icon-user"></i>On <?php echo $row['date']; ?></li>
					<!--<li><i class="icon-tags"></i>Tags <a href="#">Works</a><a href="#">Personal</a></li> -->
				</ul>
			</div>
			<div class="post-right"><i class="icon-comments"><h6>By </i><a href="#"> </a><?php echo $row['lecturer']; ?></h6></div>
		</div>
		<p>
			 <?php echo $row['lecture']; ?>
		</p>
	</div><!-- end post -->
	<hr>
    
	<h4><?php echo $count; ?> comments</h4>
	<!--
	<div id="comments">
		<ol>
        
			<li>
			<div class="avatar"><a href="#"><img src="img/avatar1.jpg" alt="" class="img-responsive"></a></div>
			<div class="comment_right clearfix">
				<div class="comment_info">Posted by <a href="#">Anna Smith</a><span>|</span> 25 apr 2019 <span>|</span><a href="#">Reply</a></div>
				<p>
					Nam cursus tellus quis magna porta adipiscing. Donec et eros leo, non pellentesque arcu. Curabitur vitae mi enim, at vestibulum magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sit amet sem a urna rutrumeger fringilla. Nam vel enim ipsum, et congue ante.
				</p>
			</div>
			<ul>
				<li>
				<div class="avatar"><a href="#"><img src="img/avatar2.jpg" alt="" class="img-responsive"></a></div>
				<div class="comment_right clearfix">
					<div class="comment_info">Posted by <a href="#">Tom Sawyer</a><span>|</span> 25 apr 2019 <span>|</span><a href="#">Reply</a></div>
					<p>
						 Nam cursus tellus quis magna porta adipiscing. Donec et eros leo, non pellentesque arcu. Curabitur vitae mi enim, at vestibulum magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sit amet sem a urna rutrumeger fringilla. Nam vel enim ipsum, et congue ante.
					</p>
					<p>
						Aenean iaculis sodales dui, non hendrerit lorem rhoncus ut. Pellentesque ullamcorper venenatis elit idaipiscingi Duis tellus neque, tincidunt eget pulvinar sit amet, rutrum nec urna. Suspendisse pretium laoreet elit vel ultricies. Maecenas ullamcorper ultricies rhoncus. Aliquam erat volutpat.
					</p>
				</div>
				</li>
			</ul>
			</li>
            
			<li>
			<div class="avatar"><a href="#"><img src="img/avatar3.jpg" alt="" class="img-responsive"></a></div>
			<div class="comment_right clearfix">
				<div class="comment_info">Posted by <a href="#">Adam White</a><span>|</span> 25 apr 2019 <span>|</span><a href="#">Reply</a></div>
				<p>Cursus tellus quis magna porta adipiscin</p>
			</div>
			</li>
            
		</ol>
	</div><!-- End Comments -->
    <div id="comments">
		<ol>
        <?php while ($roc=mysql_fetch_array($sqc)) { ?>
			<li>
			<!--<div class="avatar"><a href="#"><img src="img/avatar1.jpg" alt="" class="img-responsive"></a></div> -->
			<div class="comment_right clearfix">
				<div class="comment_info">Posted by <a href="#"><?php echo $roc['username']; ?></a><span>|</span><?php echo $roc['date']; ?> <span>|</span><?php echo $roc['time']; ?></div>
				<p>
					<?php echo $roc['talk']; ?>
				</p>
			</div>
			
			</li>
           <?php } ?>
		</ol>
	</div><!-- End Comments -->


	
		<form action="" method="post">
		<div class="row">
					<div class="col-md-12">
	Comment as <input class="form-control" type="text" name="name" required=""  value="<?php echo $_SESSION['namy']; ?>" />
		</div>
		</div>
		<textarea name="message" class="form-control"  rows="4" required="" placeholder="Type.."></textarea>
		<input type="submit" class="button_medium" value="Send" name="post" />
	</form>
    
    
		<!--
		<input class="form-control" type="text" name="mail" value="Email" onfocus="if (this.value == 'Email') this.value = '';" onblur="if (this.value == '') this.value = 'Email';"/>
		-->
</div><!-- end col-right-->
 <!-- =========================Start Col left section ============================= -->   
	<aside class="col-md-4 col-sm-4">
	<div class="col-left">
		<div class="sidebar">
            
			<div class="widget tags">
				<h4>Topics</h4>
				<?php while ($rot=mysql_fetch_array($sqi2)) { $ke=$rot['lecture_id']; ?>				
				<a href="lecture_in_details.php?key=<?php echo $ke; ?> "> <?php echo $rot['topic']; ?> </a>
				<?php }?>
			</div><!-- End widget -->
            
		</div><!-- end siedebar  -->
	</div><!-- end  col left -->
      <!-- <p><img src="img/banner.jpg" alt="Banner" class="img-rounded img-responsive" ></p> -->
	</aside>

</section><!-- end section-->
</div><!-- end row-->
</div><!-- end container-->
  
  <!-- FOOTER -->
<?php include('footer.php'); ?>
<!-- -->
</body>
</html>