<?php 
//session and cinnection
include('conn.php');
session_set_cookie_params(3600 * 24 * 7);
session_start();
//GETING STATUSES
$msg=$_GET['msg'];
//
//selection news and advert
$sqn=mysql_query("select * from news where visibility=1 ORDER BY news_id DESC LIMIT 4");
$msg=$_GET['msg'];

//selecting welcome note
  $sqw=mysql_query("select * from welcome_note where content_id=1");
  $roww=mysql_fetch_array($sqw);

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
$advimg=$roa['image'];
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
<!-- HEADER -->
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
                        <input type="password" class="form-control ie7-margin" id="lastname_visit" name="pwd">  
                        
                    <input type="submit" value="Login" class=" button_medium" name="login">
                    or <a href="reg.php">Register</a>
                        
</form>

                
                </div>
    <hr>
    <h3>Latest news</h3>
    <div class="widget">
     <?php while($rown=mysql_fetch_array($sqn)){ $nid=$rown['news_id']; ?>
                    
                         <small><?php echo $rown['date']; ?></small><h4><a href="news_details.php?nid=<?php echo $nid; ?>"><?php echo $rown['title']; ?></a></h4>
                    <br>
                <?php } ?> 
    </div>
</div>

            
</aside>
    
<section class="col-md-8 col-sm-8">
    <div class="col-right">
        <h4>Daily Hadith</h4>
        <p>"<?php echo $roh['hadith'];  ?>On the authority of Anas bin Malik, the servant of the messangerof Allah, that the prophet said: <br>
        None of you [truly] beleives until he wishes for his brother what he wishes for himself. <br> elated by Bukhari and Muslim-Haditth 13 An-nawawi
        "</p>
    </div>
</section>

<section class="col-md-8 col-sm-8">
    <div class="col-right">
        <h2>Welcome note</h2>
        <p> 
        <?php echo $roww['content']; ?> 
        </p>
        <hr>
      
        <p><?php echo "<img src='$advimg' width='100%' height='100%'>"; ?></p>
        
    </div>
    </section>
  </div>
</div><!-- end container-->
  <?php include('footer.php'); ?>
</body>
</html>