<?php
session_start();
include('conn.php');
$date=date('M, d Y');
$page=$_GET['page'];
//

 if($page==1){$start=0;$end=15;}
 else if($page==2){$start=15;$end=30;} 
 else if($page==3){$start=30;$end=45;} 
 else if($page==4){$start=45;$end=60;} 
 else if($page==5){$start=60;$end=75;} 
 else if($page==6){$start=75;$end=90;}

if(isset($_SESSION['student_id'])){$val='Ask..'; $nam='ask'; $lin='home.php';}
if(isset($_SESSION['lect_id'])){$val='Answer..'; $nam='reply'; $lin='lecturer_home.php';
$stop=true;
}			   
//
//selecting lecture
$qry="select * from free_lecture limit ". $start." , ".$end;
$sql=mysql_query("select * from free_lecture");
$sqi=mysql_query($qry);
$tptal_topic=mysql_num_rows($sql);
$pagin=$tptal_topic/15;
$sqi2=mysql_query("select * from free_lecture limit 0, 20");
//setting

$dia=$_POST['dia'];
if(isset($_POST['talk'])){	
	$ask=mysql_query("insert into talk (lecture_id,talk,username,date,time,session) VALUES ( '$lid','$dia','$user','$date','$time', '$session')");
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
<title>AOI- Series of lectures</title>

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
    	<h3> TOPICS</h3>
            <ul class="submenu-col"><?php 
            while($row2=mysql_fetch_array($sqi2)){
     $key=$row2['lecture_id']; ?>
                <li><a href="lecture_in_details.php?key=<?php echo $key; ?>"><?php echo $row2['topic']; ?></a></li>
                <?php } ?>
                            </ul>
            
            <hr>
                       <p><a href="index.php" class=" button_red_small">Home</a></p>
            
    </div>
  </aside>
 
<section class="col-md-8 col-sm-8">
	<div class="col-right">

	<!-- WHILE -->
    <?php 
    while($row=mysql_fetch_array($sqi)){
     $key=$row['lecture_id']; 
     $sqc=mysql_query("select * from talk where lecture_id='$key'");
      $count=mysql_num_rows($sqc); $image=$row['image1']; 
      ?>
    <!-- WHILE END -->

<!-- LECTURE & LECTURE IMAGE-->
       <div class="post">
          <h2><a href="lecture_in_details.php?key=<?php echo $key; ?>"><?php echo $row['topic']; ?></a></h2>
    <?php if(strlen($image)>2){ 
      echo "<img src='$image' class='img-responsive' width='948px' height='345px'>";
      }?>
<!-- LECTURE & LECTURE IMAGE END -->

<!-- COMMENT -->
           <div class='post_info clearfix'>                             
          		<p><?php echo substr($row['lecture'],0,500);?>...<a href="lecture_in_details.php?key=<?php echo $key; ?>">Read more</a></p>
<hr>
           		 <div class="post-left">
           		 <h4><a href="lecture_in_details.php?key=<?php echo $key; ?>"><?php echo $count; ?> Dialogues</a></h4>
                    	<!--<i class="icon-calendar-empty"></i>On <span>12 Nov 2020</span>-->         
               </div>
               <div class="post-right"><a href="#"></a>By Sheikh Alagbada</div>  
               </div> 
<!-- COMMENT END -->
       </div> <!-- end post -->
       <?php } ?>
       
           <div class="text-center">
               <ul class="pagination">
               <?php for($i=1;$i<=1;$i++){  ?>

             
                    <li class="<?php if($i==$page){echo 'active';} ?>"><a href='lectures.php?page=<?php echo $i;?>' 
                    >
                    <?php echo  $i; ?></a></li>
               
                <?php } ?>    
              </ul>
              <br>
          </div><!-- end pagination-->
    
    </div><!-- end col-right-->
</section> <!-- end section-->

  </div><!-- end row-->
  </div> <!-- end container-->
  
 
<!-- FOOTER -->
<?php include('footer.php'); ?>
<!-- -->
</body>
</html>