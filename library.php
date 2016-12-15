<?php 
include('conn.php');

//selecting advertimage
$sqad=mysql_query("select * from advert where advert_id=2");
$roa=mysql_fetch_array($sqad);
$advimg=$roa['image'];
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
<title>AOI- Library</title>
<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- HEADER -->
<?php include('nav.php'); ?>
<!-- -->
<div class="container">

<div class="row">
<h4>&nbsp;&nbsp;&nbsp;AOISlamic Library.</h4>
<!-- =========================Start Col left section ============================= -->
<aside  class="col-md-4 col-sm-4">
  <div class="col-left">
  <center>
      <h3>Menu</h3>
            <ul class="submenu-col">
            
                <li><img src="img/vidoe.jpg"><a href="free_video_download.php">Video</a></li>
                <li><img src="img/audoe.png"><a href="free_audio_download.php">Audios</a></li>
                <li><img src="img/pdfdoe.jpg"><a href="free_ebook_download.php">E-books</a></li>

            </ul>
            
            <hr>
            
           </center> 
            
    </div>
        <p><?php echo "<img src='$advimg' width='100%' height='100%'>"; ?></p>
</aside>
 
<section class="col-md-8 col-sm-8">
  <div class="col-right">
      <br>
          <center>
          <h3><u>All downloads here are free. </u></h3>
      <h1><img src="img/vidoe.jpg"><a href="free_video_download.php">Free Video</a></h1>
      <hr>
      <h1><img src="img/audoe.png"><a href="free_audio_download.php"> Free Audios</a></h1>
      <hr>
      <h1><img src="img/pdfdoe.jpg"><a href="free_ebook_download.php">Free Ebooks</a></h1>
      </center>
          <!--
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

 <?php include('footer.php');?>
</body>
</html>