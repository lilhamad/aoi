<?php
session_start();
include('conn.php');
$date=date('M, d Y');

if(isset($_SESSION['admin_id']) || isset($_SESSION['exco_id'])) {}else{echo '<script type="text/javascript">window.location="index.php?msg=1"</script>';}

//img code
$na=$_FILES['file']['name'];
$ty=$_FILES['file']['type'];
$sy=$_FILES['file']['size'];
if (($ty=="image/jpg"||$ty == "image/png"||$ty=="image/jpeg") && $sy < 5000000){
        if (file_exists("passports/" .$na)){
             unlink("passports/" .$na);
             move_uploaded_file($_FILES['file']['tmp_name'],"passports/" .$na);
             $path = "passports/" .$na;}
        else{
             move_uploaded_file($_FILES['file']['tmp_name'],"passports/" .$na);
             $path = "passports/" .$na;}
}
else{$er=$_FILES['file']['error'];
    if($er >0){
        $error=true;
    }}
    //
 if(isset($_POST['post']))
        {        
        $news = $_POST['news'];
        $name = $_POST['name'];
        $title = $_POST['title'];
        $date=date('M,d Y.');
    $sqi = mysql_query("insert into news (news,title, poster,image,date,visibility) values ('$news','$title','$nam','$path','$date',1)");
    if(!$sqi){$errar=true;}
       } 
////////////////
?>
<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]--><head>
<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI- post news</title>
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
                <li><a href="view_students.php" >Student(<?php echo $counts; ?>)</a></li>
                <li><a href="#">Lecturers(<?php echo $countl; ?>)</a></li>
                <li><a href="#">AOI BOARD(<?php echo $countb; ?>) </a></li>
                <li><a href="#">Courses(<?php echo $countu; ?>) </a></li>
                <li><a href="result_check.php">Surgestion</a></li>
            </ul>
            
            <hr>
            
            <h3>Post news</h3>
            <ul class="submenu-col">
                <li><a href="post_news.php" id="active" >Post news</a></li>
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
    <h4>Post news</h4>

    <?php if(isset($errar)){echo "<div class='fail'> an error occured</div>";} if($sqi){echo "<div class='suc'>News posted succesfully <a href='manage_news.php'>View</a></div>";} ?>

    <form action="" method="post">
        <input class="form-control" type="text" name="title" value="News title" onfocus="if (this.value == 'News title') this.value = '';" onblur="if (this.value == '') this.value = 'News title';"/>
        <input class="form-control" type="text" name="name" value="Name of poster i.e Admin" onfocus="if (this.value == 'Name of poster i.e Admin') this.value = '';" onblur="if (this.value == '') this.value = 'Name of poster i.e Admin';"/>
        <textarea name="news" class="form-control"  rows="7" onfocus="if (this.value == 'News...') this.value = '';" onblur="if (this.value == '') this.value = 'News...';">News...</textarea>
        <span><input type="file"> News image if neccessary</span><br><br>
        <input type="reset" class="button_medium" value="Clear field"/>
        <input type="submit" class="button_medium" value="Post news" name="post" />
    </form>
</section>

  </div><!-- end row-->
  </div> <!-- end container-->

  
  <!-- HEADER -->
<?php include('footer.php'); ?>
<!-- -->
<!-- NAV -->
</body>
</html>