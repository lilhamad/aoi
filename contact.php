<?php 
include('conn.php');
$sqi=mysql_query("select a.firstname, a.phone,a.user_id, a.image, b.user_id, b.title from users a, executives b where a.user_id=b.user_id ");
$sqad=mysql_query("select * from advert where advert_id=2");
$roa=mysql_fetch_array($sqad);
$advimg=$roa['image'];
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
<title>AOI - Contact page</title>

<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
<?php include('nav.php'); ?>
<!-- -->
<div class="container">
	
	<h2>Contacts</h2>
        <!-- =========================Start Col left section ============================= -->
		<aside  class="col-md-4 col-sm-4">
		<div class="col-left">
						<ul>
				<li><i class="icon-phone"></i> Telephone: + 2348024066867</li>
				</ul>
		</div>		
		<p><?php echo "<img src='$advimg' width='100%' height='100%'>"; ?>
</p>
		</aside>
        
        <!-- =========================Start Col right section ============================= -->
		<section class="col-md-8 col-sm-8">
		<div class="col-right">
			<p class="lead">
				You can contact the brothers/sisters below for more information and inshaallah the will respond to your request. You can contact AOI reps in your school if you find your school below. 
			</p>
			<ul>
			 <?php  while($row=mysql_fetch_array($sqi)){?><tr align="left">
                    <h3><?php echo $row['title']; ?></h3>
                    <li><?php echo $row['phone']; ?></li><br>
                  </tr><?php }?>
                  </ul>
			<hr>
			<h4>AS-SALAM ALAYKUM...</h4>
            
			
            
		</div><!-- end col right-->
		</section>
	</div><!-- end row-->
</div><!-- end container-->
 <!-- HEADER -->
<?php include('footer.php'); ?>
</body>
</html>