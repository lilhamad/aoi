<?php
session_start();
include('conn.php');
if(!isset($_SESSION['admin_id'])){echo '<script type="text/javascript">window.location="index.php?msg=1"</script>';}
$sqi=mysql_query("select * from news order by news_id desc");
 ?>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]--><head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>Select course page</title>
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
    <font><center><h6>Admin</h6></center><h4><?php echo $_SESSION['admin_name'];?></h4></font>
</div>
    <div class="col-left">
        <h3>Common</h3>
            <ul class="submenu-col">
                <li><a href="home.php"  >Home</a></li>
                <li><a href="view_students.php" >Student(<?php echo $counts; ?>)</a></li>
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
                <li><a href="manage_news.php" id="active">Manage news </a></li>
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
   <h4>List of news</h4>
   <h5>
        <table width="100%">
          <tr width="100%">
            <td >S/N</td>
            <td ><h4>Title</h4></td>
            <td ><h4>Status</h4></td>
            <td >&nbsp;</td>
          </tr>
          <?php 
          $num=0; while($roh=mysql_fetch_array($sqi)){ $num++; $nid=$roh['news_id'];                        
          ?>
          <tr width="100%">
            <td><?php echo $num;  ?></td>
            <td><?php echo $roh['title'];?></td>
            <td><h5><a href="<?php if($roh['visibility']==0){echo "news_show.php?id=$nid";} else echo "news_hide.php?id=$nid"; ?>" >
            <?php   if($roh['visibility']==1){echo "<div class='suc'> Visible";}else echo "<div class='fail'>Hidden"; ?></div></a></h5>
            </td>
            <td><a href="news_details.php?nid=<?php echo $nid; ?>">View more details ></a></td>
            <?php 
        } ?>
          </tr>
        </table>
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