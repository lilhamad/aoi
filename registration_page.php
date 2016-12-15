<?php
include('conn.php');
// selecting category
$sqca=mysql_query("select * from category");
//
if(isset($_POST['reg']))
        {        
        $fnam = strip_tags($_POST['fn']);
        $lnam = strip_tags($_POST['ln']);
		$fname=trim($fnam);
		$lname=trim($lname);
		$phone = trim($_POST['ph']);
        $email = strip_tags($_POST['em']);
		$gender = $_POST['gen'];		
        $pwd = $_POST['pa'];
        $conf_pwd = $_POST['cpa'];
		if($gender=="1"){$img='passports/male.jpg';}else{$img='passports/female.jpg';}
        $sqp=mysql_query("select * from users where rank=0 and phone='$phone' ");$cp=mysql_num_rows($sqp);
		$sqe=mysql_query("select * from users where rank=0 and email='$email' ");$ce=mysql_num_rows($sqe);
		if($cp>0){
        	$perror = "*Phone number has already been used choose another number." ;}
			if($ce>0){
        	$eerror = "*Email has already been used" ;}
		if($pwd != $conf_pwd){
        	$pwderror = "*Password mis match" ;	
		
        }
      	if(strlen($pwd) < 4 ){
        	$nerror = "*Password should be atleast 4" ;	
        } 
		if(strlen($phone) < 11 ){
        	$phnerror = "*Phone number should be atleast 11 numbers" ;	
        }  
		if(isset($perror) || isset($eerror) || isset($nerror) || isset($pwderror) ||isset($phnerror))
	   {$error=true;}    
      if(!isset($perror) && !isset($eerror) && !isset($nerror) && !isset($pwderror)&&!isset($phnerror))
	   {
// Insert into the database
    $sql = mysql_query("INSERT INTO users(firstname, lastname,phone, email,gender,password,image,rank,status,date)VALUES('$fname', '$lname','$phone','$email','$gender', '$pwd','$img','0','0','$date')");
//echo $insert;
       }        
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
<title>AOIslamic.com.ng registration page</title>
<meta name="description" content="EDU - Educational and Courses Boostrap based site template only 14$">
<meta name="author" content="Ansonika">

<!-- Favicons-->
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon"/>
<link rel="apple-touch-icon" type="image/x-icon" href="img/apple-touch-icon-57x57-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="72x72" href="img/apple-touch-icon-72x72-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="114x114" href="img/apple-touch-icon-114x114-precomposed.png">
<link rel="apple-touch-icon" type="image/x-icon" sizes="144x144" href="img/apple-touch-icon-144x144-precomposed.png">

<!-- Mobile Specific Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS -->
<link href="css/bootstrap.min.css"rel="stylesheet">
<link href="css/megamenu.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="font-awesome/css/font-awesome.css" rel="stylesheet">
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet">
<link rel="stylesheet" href="js/fancybox/source/jquery.fancybox.css?v=2.1.4">

<!--[if lt IE 9]>
<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->

<!-- Jquery -->
<script src="js/jquery.js"></script>

<!-- Support media queries for IE8 -->
<script src="js/respond.min.js"></script>

<!-- HTML5 and CSS3-in older browsers-->
<script src="js/modernizr.custom.17475.js"></script>

<!--[if IE 7]>
  <link rel="stylesheet" href="font-awesome/css/font-awesome-ie7.min.css">
<![endif]-->

<!-- Style switcher-->
<link rel="stylesheet" type="text/css" media="screen,projection" href="src/jquery-sticklr-1.4-light-color.css" >
<!-- Fonts-->
<link rel="alternate stylesheet" type="text/css" href="src/css/helvetica.css" title="helvetica" media="all">
<link rel="alternate stylesheet" type="text/css" href="src/css/cabin.css" title="cabin" media="all">
<link rel="alternate stylesheet" type="text/css" href="src/css/droid.css" title="droid" media="all">
<link rel="alternate stylesheet" type="text/css" href="src/css/lato.css" title="lato" media="all">
<link rel="alternate stylesheet" type="text/css" href="src/css/montserrat.css" title="montserrat" media="all">
<link rel="alternate stylesheet" type="text/css" href="src/css/opensans.css" title="opensans" media="all">
<link rel="alternate stylesheet" type="text/css" href="src/css/quattrocento.css" title="quattrocento" media="all">
<link rel="alternate stylesheet" type="text/css" href="src/css/roboto.css" title="roboto" media="all">
<link rel="alternate stylesheet" type="text/css" href="src/css/robotoslab.css" title="robotoslab" media="all">
<script type="text/javascript">
  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-11097556-8']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();
</script>
</head>

<body>
<!--[if !IE]><!--><script>if(/*@cc_on!@*/false){document.documentElement.className+=' ie10';}</script><!--<![endif]--> <!-- Border radius fixed IE10-->

<header>
	<div class="container">
   	  <div class="row">
    	<div class="col-md-4 col-sm-4" id="logo"><a href="index.html"><img src="img/logo.png" alt="Logo"></a></div>
        <div class="col-md-8 col-sm-8">
        
        	<div id="phone" class="hidden-xs"><strong>+44 (0) 123 456 789 </strong>Admissions department</div>
            
            <div id="menu-top">
            	<ul>
                	<li><a href="index.html" title="Home">Home</a> | </li>
                    <li><a href="news.php" title="News and Events">News &amp; Events</a> | </li>
                    <li><a href="contact.html" title="Contact">Free library</a></li>
                </ul>
            </div>

        </div><!-- End col-md-8-->
        </div><!-- End row-->
    </div><!-- End container-->
</header><!-- End Header-->

 <nav>
<div class="megamenu_container">
cdnvufdhv vjaiajd
</div>
</nav><!-- /navbar -->

<div class="container">
	
	<div class="row">
    	<div class="col-md-12">
		<h1>Registeration</h1>
			<ul class="breadcrumb">
				<li><a href="index.html">Home</a><span class="divider">/</span></li>
				<li class="active">Registeration</li>
			</ul>
		</div>
        <!-- =========================Start Col left section ============================= -->
		<aside  class="col-md-4 col-sm-4">
		<div class="col-left">
			<h3>Schools</h3>
			 <div class="row">
            <?php while($roca=mysql_fetch_array($sqca)){ $catid=$roca['category_id']; ?>
				<div class="">
					<h5><?php echo $roca['category']; ?></h5>
					<ul class="list-menu">
					<?php $sqcc=mysql_query("select * from course where category='$catid'"); while($rocc=mysql_fetch_array($sqcc)){ $cosid=$rocc['course_id']; ?> 
						<li><a href="all-courses.html" title="All courses"><?php echo $rocc['course_title']; ?></a></li><?php } ?>
					</ul>
					<br>
				</div>
				<?php } ?>
                </div>
				</div>
		<p>
			<a href="all-courses.html" title="All courses"></a>		</p>
		</aside>
        
        <!-- =========================Start Col right section ============================= -->
		<section class="col-md-8 col-sm-8">
		<div class="col-right">
			<p class="row">
				Registration with AOI is very easy fill the <strong> simple form </strong> below and IN SHAA ALAHU thats all you have become UMMAH learning with internet having access to Free and payed lectures.
			</p>
			<hr>
			<h4>Registration Form</h4>
            <div class="success_box">
			<?php if(isset($sql)){echo "Registration successful $fname you can <a href='login.php'>Login</a>.";} ?>
			</div>
			<div class="error_box">
			<?php
                       if(isset($perror)){
						   echo $perror."<br>";
					   }
					   if(isset($eerror)){
						   echo $eerror."<br>";
					   }
					   if(isset($pwderror)){
						   echo $pwderror."<br>";
					   }
					   if(isset($nerror)){
						   echo $nerror."<br>";
					   }
					   if(isset($phnerror)){
						   echo $phnerror."<br>";
					   }
					 ?>
			</div>
			<form method="post" action="" value="<?php if(isset($sql)){echo "hidden=''";} ?>">
				<div class="row">
					<div class="col-md-6">
						<label>Name</label>
						<input name="fn" type="text" class="form-control ie7-margin" id="" value="<?php if(isset($error)){echo $fname;} ?>">
					</div>
					<div class="col-md-6">
						<label>Last name</label>
						<input name="ln" type="text" class="form-control ie7-margin" id="" value="<?php if(isset($error)){echo $lname;} ?>">
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<label>Phone</label>
						<input name="ph" type="text" class="form-control ie7-margin" id="" value="<?php if(isset($error)){echo $phone;} ?>">
					</div>
					<div class="col-md-6">
						<label>Email <span class="required"> </span></label>
						<input name="em" type="email" class="form-control ie7-margin" id="" value="<?php if(isset($error)){echo $email;} ?>">
					</div>
				</div>
				<div class="row">
					<div class="col-md-6">
						<label>Select gender </label>
						<select name="gen" class="form-control" id="">
							<option value="1">Male</option>
							<option value="0">Female</option>
							
					  </select>
					</div>
				</div>
              
			  <div class="row">
					<div class="col-md-6">
						<label>Password</label>
						<input name="pa" type="password" class="form-control ie7-margin" id="" value="<?php if(isset($error)){echo $pwd;} ?>">
					</div>
					<div class="col-md-6">
						<label>Verify Passwod <span class="required"> </span></label>
						<input name="cpa" type="password" class="form-control ie7-margin" id="" value="<?php if(isset($error)){echo $conf_pwd;} ?>">
					</div>
			  </div>

			  
				<div class="row">
				  <div class="button-align col-md-3">
						<input name="reg" type="submit" class=" button_medium" id="" value="Register">
				  </div>
			  </div>
				<hr>
			</form>
            
			<h4>
			  <!-- end col right-->
		</h4>
		  </div>
		</section>
	</div>
	<!-- end row-->
</div><!-- end container-->
  
  <footer>
  <div class="container">
  	<div class="row">
    	<div class="col-md-4 col-sm-4" id="brand-footer">
   	    	<p><img src="img/logo-footer.jpg" alt=""></p>
            <p>Copyright © 2013</p>
            <div class="twitter"><a href="#" >Follow on Twitter</a></div>
			<div class="fb"><a href="#">Follow on  Facebook</a></div>  
        </div>
        <div class="col-md-4 col-sm-4" id="contacts-footer">
        	<h4>Contacts</h4>
            <ul>
            	<li><i class="icon-home"></i> 11 Fifth Ave, Loftus - NEW JERSEY, US</li>
            	<li><i class="icon-phone"></i> Telephone: + 61 (2) 8093 3400</li>
                <li><i class="icon-phone-sign"></i> Fax: +61 (2) 9542 3599</li>
                <li><i class="icon-envelope"></i> Email: <a href="#"><span class="__cf_email__" data-cfemail="1d6e687f70746e6e7472736e5d7972707c7473337e7270">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">
/* <![CDATA[ */!function(){try{var t="currentScript"in document?document.currentScript:function(){for(var t=document.getElementsByTagName("script"),e=t.length;e--;)if(t[e].getAttribute("data-cfhash"))return t[e]}();if(t&&t.previousSibling){var e,r,n,i,c=t.previousSibling,a=c.getAttribute("data-cfemail");if(a){for(e="",r=parseInt(a.substr(0,2),16),n=2;a.length-n;n+=2)i=parseInt(a.substr(n,2),16)^r,e+=String.fromCharCode(i);e=document.createTextNode(e),c.parentNode.replaceChild(e,c)}t.parentNode.removeChild(t);}}catch(u){}}()/* ]]> */</script></a></li>
            </ul>
            <hr>
        	<h4>Newsletter</h4>
            <p>Donec adipiscing, quam non faucibus luctus, mi arcu blandit diam. Dolor consul graecis nec ut, scripta eruditi scriptorem et nam.</p>
            
            <div id="message-newsletter"></div>
              <form method="post"  action="assets/newsletter.php" name="newsletter" id="newsletter" class="form-inline">
                <input name="email_newsletter" id="email_newsletter"  type="email" value="" placeholder="Your Email" class="form-control" >
                <button  id="submit-newsletter" class="button_medium add-bottom-20" style="top:2px; position:relative" > Subscribe</button>
              </form>
        	</div>
        <div class="col-md-4 col-sm-4" id="quick-links">
        	<h4>Quick links</h4>
            <ul>
            	<li><a href="#" >Admissions</a></li>
                <li><a href="#" >Administration</a></li>
            	<li><a href="#" >Courses</a></li>
                <li><a href="#" >Departments and Programs</a></li>
                <li><a href="#" >Summer sessions</a></li>
            </ul>
            <hr>
            <ul>
            	<li><a href="#" >Degrees &amp; Majors</a></li>
            	<li><a href="#" >Master's online</a></li>
                <li><a href="#" >Professional Courses</a></li>
                <li><a href="#" >Bacherlor's</a></li>
                <li><a href="#" >Courses</a></li>
                <li><a href="#" >Departments and Programs</a></li>
            </ul>
        </div>
        
    </div>
  </div>
  </footer><!-- End footer-->
 <div id="toTop">Back to Top</div>

<!-- DATEPICKER -->        
<script type="text/javascript" src="js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">
      $('#datetimepicker').datetimepicker({
        format: 'dd/MM/yyyy hh:mm',
		pick12HourFormat: false,   // enables the 12-hour format time picker
  		pickSeconds: false, 
        language: 'en'
      });
</script>
<!-- MEGAMENU --> 
<script src="js/jquery.easing.js"></script>
<script src="js/megamenu.js"></script>

<!-- OTHER JS -->    
<script src="js/bootstrap.js"></script>
<script src="js/functions.js"></script> 
<script src="assets/validate.js"></script>

 <!-- FANCYBOX -->
<script  src="js/fancybox/source/jquery.fancybox.pack.js?v=2.1.4" type="text/javascript"></script> 
<script src="js/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.5" type="text/javascript"></script> 
<script src="js/fancy_func.js" type="text/javascript"></script> 

<!-- STYLE SWITCHER -->
<script type="text/javascript" src="src/jquery-sticklr-1.4.min.js"></script>
	<script type="text/javascript">
	    $(document).ready(function(){
	        $('#example-1').sticklr({
                animate         : true,
                showOn		    : 'hover'
			});
	    });
	</script>
<script type="text/javascript" src="src/fswit.js"></script>
<ul id="example-1" class="sticklr">
        <li><a href="#" class=" icon-font" style="text-indent:-9999px"></a>
            <ul>
                <li class="sticklr-title"><a href="http://themeforest.net/user/Ansonika/portfolio?ref=ansonika">Change Font Family</a></li>
                <li><a href="" rel="helvetica" class="styleswitch" >Helvetica Neue (Default)</a></li> 
                <li><a href="" rel="cabin" class="styleswitch" >Cabin</a></li> 
                <li><a href="" rel="droid" class="styleswitch" >Droid Sans</a></li> 
                <li><a href="" rel="lato" class="styleswitch" >Lato</a></li> 
                <li><a href="" rel="montserrat" class="styleswitch" >Montserrat</a></li> 
                <li><a href="" rel="opensans" class="styleswitch" >Open Sans</a></li> 
                <li><a href="" rel="quattrocento" class="styleswitch" >Quattrocento</a></li>
                <li><a href="" rel="roboto" class="styleswitch" >Roboto</a></li> 
                <li><a href="" rel="robotoslab" class="styleswitch" >Roboto Slab</a></li>
            </ul>
        </li>
         <li><a href="#" class="icon-purchase"></a>
            <ul>
                <li class="sticklr-title"><a href="http://themeforest.net/item/edu-educational-courses-college-with-megamenu/5210923?ref=ansonika">Purchase </a></li>
 					<li><a href="http://themeforest.net/item/edu-educational-courses-college-with-megamenu/5210923?ref=ansonika" >Buy this item for only15$</a></li> 
            </ul>
        </li>
    </ul>

</body>
</html>