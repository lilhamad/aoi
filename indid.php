<?php 
//session and cinnection
include('conn.php');
session_start();
//GETING STATUSES
$msg=$_GET['msg'];
//
//selection news and advert
$sqn=mysql_query("select * from news where visibility=1 ORDER BY news_id DESC LIMIT 3");
$msg=$_GET['msg'];

//selecting welcome note
  $sqw=mysql_query("select * from welcome_note where content_id=1");
  $rown=mysql_fetch_array($sqw);

// selecting courses
$sqc=mysql_query("select * from course");
//
// selecting category
$sqca=mysql_query("select * from category");
//
// selecting staffs
$sqe=mysql_query("select a.title,a.user_id, b.user_id, b.firstname,b.lastname from executives a, users b where a.user_id=b.user_id");
//
//selecting advertimage
$sqad=mysql_query("select * from advert where advert_id=2");
$roa=mysql_fetch_array($sqad);
//$advimg=$roa['image'];
$advimg="img/about.jpg";
//
//LOGIN CODE
$phone = $_POST['phone'];
            $pwd = $_POST['pwd'];
        if(isset($_POST['login']))
        {   echo $select;
           
            $sqi = mysql_query("SELECT * FROM users where phone='$phone' and password='$pwd' and rank=0 ");
            $row=mysql_fetch_array($sqi);
            $id=$row['user_id'];
            $stat=$row['status'];
            $count=mysql_num_rows($sqi);
            if($count>0)
           {
                mysql_query("UPDATE users set online='online' where user_id='$id'");
               if($stat==1){
               $_SESSION['student_id']=$id;
            //header('Location:home.php'); 
            echo '<script type="text/javascript">window.location="home.php"</script>'; } 
            else{$unact=true;}
           }
           else{$error=1;}
        }
//
?>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!DOCTYPE html>
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]--><head>

<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI- At-Tibyan online islamic school home page</title>

<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
<?php include('nav.php'); ?>
<!-- -->
<!-- HEADER 
<?php //include('slider.php'); ?>
<!-- -->
<!-- LOGIN FORM --> 
<div class="container">
<div class="row">
	
<!-- =========================Start Col left section ============================= -->
<aside  class="col-md-4 col-sm-4">
<div class="col-left">
	<h4>Login</h4>
	<div class="form-group">

	<form method="post" action="index.php" >
					<!-- LOGIN STATUSES -->
					<?php
					 if(isset($error)){echo "<div class='fail'> Invalid username or Password </div>";} 
					 if($msg=="1"){echo "<div class='fail'> You need to login first.</div>";} 
					 ?>
						<label>Phone number</label>			
						<input type="text" class="form-control ie7-margin" id="name_visit" name="phone">
						<label>Password </label>
						<input type="text" class="form-control ie7-margin" id="lastname_visit" name="pwd">	
						
					<input type="submit" value="Login" class=" button_medium" name="login">
					or <a href="reg.php">Register</a>
						
</form>

				
                </div>
	<hr>
	<h3>Latest news</h3>
	<div class="widget">
		<ul class="latest_news">
		<?php 			while($ron=mysql_fetch_array($sqn)){ ?>
			<li><i class="icon-calendar-empty"></i> 16th July, 2020 <div><a href="#"> <?php echo $ron['title']; ?></a></div></li>
			<?php } ?>
		</ul>
	</div>
</div>

            
</aside>
	
<section class="col-md-8 col-sm-8">
	<div class="col-right">
    	<h4>Daily Hadith</h4>
        <p>"<?php echo $roh['hadith'];  ?>Prophet muhammed (S.A.W) Said all deeds are preceeded by intention"</p>
    </div>
</section>

<section class="col-md-8 col-sm-8">
	<div class="col-right">
    	<h2>Welcome note</h2>
        <p> 
        <?php echo $rown['content']; ?> 
        </p>
        <hr>
           
        <?php while($roe=mysql_fetch_array($sqn)){
		 $news=$roe['news'];
		$ni=$roe['news_id'];
		 ?>
		<div class="strip-lessons">
        <div class="row">
        	<div class="col-md-3 col-xs-6">
            	<div class="box-style-one borders"><img src="img/newz.png" alt="" class="picture img-responsive">
           	  <h5>Lesson one</h5></div>
            </div>
            <div class="clearfix visible-xs-block"></div>
            <div class="col-md-9">
            	<h4><?php echo $roe['title']; ?></h4>
                <p><?php echo substr($news,0,90);?>... </p>
                <ul class="data-lessons">
                	<li><i class="icon-time"></i><?php echo $roe['date']; ?></li>
                    <li><i class="icon-film"></i><a class="fancybox-media" href="http://www.youtube.com/watch?v=pgk-719mTxM"><?php echo $roe['poster']; ?></a></li>
                    <li><i class="icon-cloud-download"></i><a href="news.php?nid=<?php echo $ni; ?>">Read more</a></li>
                </ul>
            </div>
        </div>
        </div><!-- End Strip course -->
        
        <?php } ?>
        
    	<p><?php echo "<img src='$advimg' width='100%' height='100%'>"; ?>
</p>
        
    </div>
    </section>
  </div>
</div><!-- end container-->
  <?php include('footer.php'); ?>
</body>
</html>