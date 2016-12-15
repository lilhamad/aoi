<?php 
session_start();
 $nid=$_GET['nid'];
include('conn.php');
$sqi=mysql_query("select * from news where news_id='$nid'");
$sqnl=mysql_query("select * from news where visibility=1   ORDER BY news_id desc LIMIT 3 ");
$ron=mysql_fetch_array($sqi);
$image=$ron['image'];
$sqad=mysql_query("select * from advert where advert_id=2");
$roa=mysql_fetch_array($sqad);
$advimg=$roa['image'];
?>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI - News in details</title>
<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
<?php include('nav.php'); ?>
<!-- -->
<div class="container">

 <!-- =========================Start Col left section ============================= -->   
	<aside class="col-md-4 col-sm-4">
	<div class="col-left">
		<div class="sidebar">
        
<div class="widget">
				<h4>Recent post</h4>
				<ul class="recent_post">
				<?php while($rown=mysql_fetch_array($sqnl)){ $nid=$rown['news_id']; ?>
					<li>
                    	<i class="icon-calendar-empty"></i> <?php echo $rown['date']; ?> <div><a href="news_details.php?nid=<?php echo $nid; ?>"><?php echo $rown['title']; ?></a></div>
                    </li>
                <?php } ?>   
				</ul>
			</div><!-- End widget -->
            
		
		</div><!-- end siedebar  -->
	</div><!-- end  col left -->
  <p><?php echo "<img src='$advimg' width='100%' height='100%'>"; ?></p>
	</aside>
    
	<!-- =========================Start Col right section ============================= -->
<section class="col-md-8 col-sm-8">
<div class="col-right">
	<div class="post">
		<h4><a href="blog_post.html"><?php echo $ron['title']; ?></a></h4>
		<?php if(strlen($image>2)){echo "<img src='$image' width='100%'>";} ?>
		<div class="post_info clearfix">
			<div class="post-left">
				<ul>
					<li><i class="icon-calendar-empty"></i>On <a href="#"><?php echo $ron['date']; ?></a></li>
					<li><i class="icon-user"></i>By <a href="#">Administrator</a></li>
					<!--<li><i class="icon-tags"></i>Tags <a href="#">Works</a><a href="#">Personal</a></li>-->
				</ul>
			</div>
			<!--<div class="post-right"><i class="icon-comments"></i><a href="#">25 </a>Comments</div>-->
		</div>
		<p>
<?php echo $ron['news'];?>.
		</p>
	</div><!-- end post -->
    
	<!--<h4>4 comments</h4>-->
<!--	<div id="comments">
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
    
	<!--<h4>Leave a comment</h4>-->
	<!--<form action="#" method="post">
		<input class="form-control" type="text" name="name" value="Name" onfocus="if (this.value == 'Name') this.value = '';" onblur="if (this.value == '') this.value = 'Name';"/>
		<input class="form-control" type="text" name="mail" value="Email" onfocus="if (this.value == 'Email') this.value = '';" onblur="if (this.value == '') this.value = 'Email';"/>
		<textarea name="message" class="form-control"  rows="4" onfocus="if (this.value == 'Message...') this.value = '';" onblur="if (this.value == '') this.value = 'Message...';">Message...</textarea>
		<input type="reset" class="button_medium" value="Clear form"/>
		<input type="submit" class="button_medium" value="Post Comment"/>
	</form>-->
    
</div><!-- end col-right-->
</section><!-- end section-->
</div><!-- end row-->
</div><!-- end container-->
  
   <?php include('footer.php'); ?>

</body>
</html>