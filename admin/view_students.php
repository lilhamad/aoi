<?php
session_start();
include('conn.php');
$uid=$_GET['id'];
$date=date('M, d Y');

if(!isset($_SESSION['admin_id'])){echo '<script type="text/javascript">window.location="index.php?msg=1"</script>';}

if(isset($_POST['sc'])){
$sqi=mysql_query("select * from users where rank =0 and firstname LIKE'%$nm%' and user_id!=30 and user_id!=31 and user_id!=32 order by user_id desc");
}
else 
$sqi=mysql_query("select * from users where rank =0 and  user_id!=30 and user_id!=31 and user_id!=32 order by user_id desc");

?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]--><head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI- View list of student</title>
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
    <center><h6>Admin</h6></center><font color=""><center><h5><h4><?php echo $_SESSION['admin_name'];?></h5></center></font>
</div>
    <div class="col-left">
        <h3>Details</h3>
            <ul class="submenu-col">
                <li><a href="home.php"  >Home</a></li>
                <li><a href="view_students.php" id="active">Student(<?php echo $counts; ?>)</a></li>
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
                <li><a href="manage_news.php">Manage news </a></li>
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
    <h4>Title</h4>
        <table width="100%" border="1" style="border:thin; border-collapse:collapse;">
          <tr>
            <td >S/N</td>
            <td ><h4>Name</h4></td>
            <td ><h4>Passport</h4></td>
            <td ><h4>Status</h4></td>
            <td >&nbsp;</td>
          </tr>
          <?php $num=0; while($row=mysql_fetch_array($sqi)) { $img=$row['image']; $num++; $sid=$row['user_id'];?> 
          <tr style="color:#100">
            <td><h4><?php echo $num;  ?></h4></td>
            <td><h4><?php  echo $row['firstname']." ".$row['lastname'];  ?></h4></td>
            <td><h4><?php if(strlen($img)>2){ echo "<img src='../$img' width='40px' height='40px' style='border-radius:50%;'>";}else ""; ?></h4></td>

            <td>
             <?php if($row['status']==1){echo "Active presently- ";}else echo "Inactive presently- "; ?>
             <a href="<?php if($row['status']==0){echo "student_activation.php?id=$sid";} else echo "student_deactivation.php?id=$sid"; ?>">
             <?php if($row['status']==1){echo "Deactivate";}else echo "Activate"; ?></a>
            </td>
            <td><a href="student_profile.php?sid=<?php echo $sid; ?>">More..</a></td>
            <?php } ?>
          </tr>
        </table>

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
</section>

  </div><!-- end row-->
  </div> <!-- end container-->

  
  <!-- HEADER -->
<?php include('footer.php'); ?>
<!-- -->
<!-- NAV -->
</body>
</html>