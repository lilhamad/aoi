<?php
include('conn.php');
$sqi=mysql_query("select * from testimony where visibility=1 order by testimony_id desc");
$name=$_POST['name'];
$phone=$_POST['phone'];
$mail=$_POST['mail'];
$testy=$_POST['testy'];
if(isset($_POST['sub'])){
$sql=mysql_query("insert into testimony (name, phone, mail,message,visibility) VALUES ('$name','$phone' ,'$mail','$testy',1)");
if($sql){$suc=true;}
if(!isset($sql)){$fail=true;}
}
 ?>
<!DOCTYPE html>
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI - Testimonies</title>


</head>

<body>
<!--[if !IE]><!--><script>if(/*@cc_on!@*/false){document.documentElement.className+=' ie10';}</script><!--<![endif]--> <!-- Border radius fixed IE10-->

<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
<?php include('nav.php'); ?>
<!-- -->
<div class="container">
        
        <!-- =========================Start Col right section ============================= -->
        			<h2>&nbsp; &nbsp;Testimonies</h2>
		<section class="col-md-8 col-sm-8">
		<div class="col-right">
			<ul>
			<?php $num=0; while($roh=mysql_fetch_array($sqi)){ $num++; $nid=$roh['news_id'];
						 
						?>
                  <div> <h4> <?php echo $roh['name']; ?></h4>
                     <p><i>"<?php echo $roh['message'];?> "</i><hr></p>
                     
                  
                 </div>
                     <?php } ?>
                  </ul>
			<br>
			<br>
			<br><br>

			<?php if(isset($suc)){echo "<div class='suc'>$name your Testimony was submitted succesfully,<br> thanks for giving your testimony JAZAKUM LAHU KHAIRAN! </div>";}
			
			if(isset($fail)){echo "<div class='fail'>An error ocured</div>";} ?>

			<form name="form1" method="post" action="" <?php if(isset($suc)){echo "hidden=''";} ?>
			<h4>Submit your testimony </h4>
			<div class="row">
					<div class="col-md-6">
						<label>Name </label>
						<input type="text" class="form-control" name="name">
					</div>
			</div>		
			<div class="row">
					<div class="col-md-6">
						<label>Email<small>(Optinal)</small></label>
						<input type="email" class="form-control" name="mail">
					</div>
			</div>
			<div class="row">	
					<div class="col-md-6">
						<label>Phone <small>(Optional)</small></label>
						<input type="text"  class="form-control" name="phone">
					</div>
				</div>            
			 <div class="row">
					<div class="col-md-12">
						<label>Testimony </label>
						<textarea rows="5"  class="form-control" name="testy"></textarea>
					</div>
			</div>
            				<input type="submit" id="submit-visit" value="Submit testimony" class=" button_medium" name="sub">
            </form>
		</div><!-- end col right-->
		</section>
	</div><!-- end row-->
</div><!-- end container-->
 <!-- HEADER -->
<?php include('footer.php'); ?>
</body>
</html>