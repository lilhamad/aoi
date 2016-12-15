<?php
// create connection
session_set_cookie_params(3600 * 24 * 7);
session_start();
       include('conn.php');
	///login
	
	if(isset($_SESSION['admin_id'])){echo '<script type="text/javascript">window.location="home.php"</script>';}
	
	   
	$msg=$_GET['msg'];
	
	 $phone = $_POST['phone'];
            $pwd = $_POST['pwd'];
     
		//Admin
		if(isset($_POST['login']))
        {echo $select;
			$sqi = mysql_query("SELECT * FROM users where phone='$phone' and password='$pwd' and rank=1");
			$row=mysql_fetch_array($sqi);
			$id=$row['user_id'];
			$name=$row['firstname']." ". $row['lastname'];
			$count=mysql_num_rows($sqi);
           
		    if($count>0)
		   {
			   mysql_query("UPDATE users set online='online' where user_id='$id'");
			   $_SESSION['admin_id']=$id;
			   $_SESSION['name']=$name;
			   echo '<script type="text/javascript">window.location="home.php"</script>';
			//header('Location:admin_home.php');   
		   }
		   else{$error=1;}
        }
		//
		
    ?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>AOI - Admin login page</title>
<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
 <nav>
<div class="megamenu_container">
</div>
</nav>
<!-- -->
<div class="container">
<center>
	<form method="post" action="index.php" >
    <div style="width: 40% !important;">
                    <!-- LOGIN STATUSES -->
                    <div class="fail">
                    <?php if(isset($msg)|| isset($error)){
                       if($msg=="ad" || $msg==1){echo "You must login first!";}if(isset($error)){echo "Invalid login details";}
                    } ?>
                    </div>
                    <!-- Staus end -->
                    <h3>Administrative Login</h3>                    
                        <label>Username</span></label>
                        <input type="text" class="form-control ie7-margin" required="" name="phone">
                   
                   
                       <br>
                   
                        <label>Password </label>
                        <input type="password" class="form-control ie7-margin" required="" name="pwd">
                    
                    <br>
                    
                    
                 <input type="submit" value="Login" class="button_medium widerit" name="login">
                    
             <div style="width: 40% !important;">                 
</form>
</center>
</div>
</div> <!-- end container-->
<?php include('footer.php'); ?>
</body>
</html>