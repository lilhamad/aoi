<?php 
session_start();
include('conn.php');
$sqn=mysql_query("select * from news where visibility=1 ORDER BY news_id desc LIMIT 6 ");
$sqnl=mysql_query("select * from news where visibility=1 ORDER BY news_id desc LIMIT 4 ");
$sqad=mysql_query("select * from advert where advert_id=1");
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
<title>AOI - At-tibyan Online Islamic news page</title>
<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
<?php include('nav.php'); ?>
<!-- -->
<div class="container">
<div class="row">

<!-- =========================Start Col left section ============================= -->
<aside  class="col-md-4 col-sm-4">
	<div class="col-left">
		<div class="sidebar">
        
			<div class="widget">
            	<div class="form-group">
				<form class="form-search form-inline">
					<input type="text" class="input-medium form-control">
					<button type="submit" class="button_medium" style="position:relative; top:2px;">Search</button>
				</form>
                </div>
			</div><!-- End Search -->
            

            
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
 
<section class="col-md-8 col-sm-8">
	<div class="col-right">
    
    <?php  while($row=mysql_fetch_array($sqn)){
					$image=$row['image'];
					$ni=$row['news_id'];
					$news= $row['news']; 
					?>
    	<div class="post">
           <h3><a href="blog_post.html"><?php echo $row['title']; ?></a></h3>
		<?php if(strlen($image>2)){echo "<img src='$image' width='100%'>";} ?>
         <div class="post_info clearfix">
               <div class="post-left">
                    <ul>
                    	<li><i class="icon-tags"></i>On <a href="#"><?php echo $row['date']; ?></a></li>
                        <li><i class="icon-user"></i>By <a href="#">Administrator</a></li>
                        <!--<li><i class="icon-tags"></i>Tags <a href="#">Works</a> <a href="#">Personal</a></li>-->
                    </ul>
               </div>
               <!--<div class="post-right"><i class="icon-comments"></i><a href="#">25 </a>Comments</div>  -->
               </div>                                
          		<p><?php echo substr($news,0,110); ?>...</p>           		<p><a href="news_details.php?nid=<?php echo $ni; ?>" class="button_medium">Read more</a></p>
       </div> <!-- end post -->
       <?php } ?>
       
       
       <hr>
           
           <div class="text-center">
               <ul class="pagination">
                    <li><a href="#">Prev</a></li>
                    <li class="active"><a href="#">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">4</a></li>
                    <li><a href="#">5</a></li>
                    <li><a href="#">Next</a></li>
              </ul>
          </div><!-- end pagination-->
    
    </div><!-- end col-right-->
</section> <!-- end section-->

  </div><!-- end row-->
  </div> <!-- end container-->
  
    <?php include('footer.php'); ?>

</body>
</html>