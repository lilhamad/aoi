<?php 
session_start();
 $nid=$_GET['nid'];
include('conn.php');
$sqi=mysql_query("select * from news where news_id='$nid'");
$sqnl=mysql_query("select * from news where visibility=1 LIMIT 0,2");
$ron=mysql_fetch_array($sqi);
?>

<!DOCTYPE html>
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if IE 9 ]><html class="ie ie9" lang="en"> <![endif]-->
<html lang="en">
<!--<![endif]-->
<head>

<!-- Basic Page Needs -->
<meta charset="utf-8">
<title>AOI - Result page</title>
<!-- HEADER -->
<?php include('header.php'); ?>
<!-- -->
<!-- NAV -->
<?php include('nav.php'); ?>
<!-- -->
<div class="container">

 <!-- =========================Start Col left section ============================= -->   
	<aside class="col-md-4 col-sm-4">
	<div class="col-left">
		<div class="sidebar">
          <p><?php echo "<img src='$advimg' width='100%' height='100%'>"; ?></p>

		</div><!-- end siedebar  -->
	</div><!-- end  col left -->
	</aside>
    
	<!-- =========================Start Col right section ============================= -->
<section class="col-md-8 col-sm-8">
<div class="col-right">
	<div class="post">
		<h4>At-tibyan Online Islamic School 2nd term Result 1437AH/2016Result</h4>
		<div class="post_info clearfix">
			<table width="100%">
			<tr><td><h5>YUG CLASS</h5></td><td></td></tr>
				<tr>
					<th>
						S/N
					</th>
					<th>
						Name
					</th>
					<th>
						Score Over 100
					</th>
					<th>
						Remark
					</th>
				</tr>
				<tr>
					<td>1</td><td>Sodiq Adekola </td><td>50</td> Passed<td></td>
				</tr>
				<tr><td colspan="4"><br></td></tr>
				<tr>
					<td>2</td> <td>Islamiyah Abdul Salam</td> <td>65</td> <td>Good</td>
				</tr>
								<tr><td colspan="4"><br></td></tr>
				<tr>
					<td>3</td> <td>Fatimah Olaniyan</td> <td>65</td> <td>Good</td>
				</tr>
								<tr><td colspan="4"><br></td></tr>

				<tr>
					<td>4</td> <td>Lateefah Folarin</td> <td>50</td> <td>Passed</td>
				</tr>
								<tr><td colspan="4"><br></td></tr>

				<tr>
					<td>5</td> <td>Lateefah Sodeinde</td> <td>80</td> <td><font color="green"> Very Good</font></td>
				</tr>
								<tr><td colspan="4"><br></td></tr>

				<tr>
					<td>6</td> <td>Balqees Folarin</td> <td>85</td> <td><font color="green"> <b>Very Good</b></font></td>
				</tr>

				<tr><td colspan="4"><hr></td></tr>
				<tr><td><h5>PREP CLASS</h5></td><td></td></tr>
				<tr>
					<td>1</td> <td>Ismail Murtado</td> <td>50</td> <td>Passed</td>
				</tr>
				<tr><td colspan="4"><br></td></tr>

				<tr>
					<td>2</td> <td>Hamid Adewuyi</td> <td>70</td> <td>Good</td>
				</tr>
			</table>
		</div>
	</div><!-- end post -->
    
	<!--<h4>4 comments</h4>-->
<!--	<div id="comments">
		<ol>
        
			<li>
			<div class="avatar"><a href="#"><img src="img/avatar1.jpg" alt="" class="img-responsive"></a></div>
			<div class="comment_right clearfix">
				<div class="comment_info">Posted by <a href="#">Anna Smith</a><span>|</span> 25 apr 2019 <span>|</span><a href="#">Reply</a></div>
				<p>
					Nam cursus tellus quis magna porta adipiscing. Donec et eros leo, non pellentesque arcu. Curabitur vitae mi enim, at vestibulum magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sit amet sem a urna rutrumeger fringilla. Nam vel enim ipsum, et congue ante.
				</p>
			</div>
			<ul>
				<li>
				<div class="avatar"><a href="#"><img src="img/avatar2.jpg" alt="" class="img-responsive"></a></div>
				<div class="comment_right clearfix">
					<div class="comment_info">Posted by <a href="#">Tom Sawyer</a><span>|</span> 25 apr 2019 <span>|</span><a href="#">Reply</a></div>
					<p>
						 Nam cursus tellus quis magna porta adipiscing. Donec et eros leo, non pellentesque arcu. Curabitur vitae mi enim, at vestibulum magna. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Sed sit amet sem a urna rutrumeger fringilla. Nam vel enim ipsum, et congue ante.
					</p>
					<p>
						Aenean iaculis sodales dui, non hendrerit lorem rhoncus ut. Pellentesque ullamcorper venenatis elit idaipiscingi Duis tellus neque, tincidunt eget pulvinar sit amet, rutrum nec urna. Suspendisse pretium laoreet elit vel ultricies. Maecenas ullamcorper ultricies rhoncus. Aliquam erat volutpat.
					</p>
				</div>
				</li>
			</ul>
			</li>
            
			<li>
			<div class="avatar"><a href="#"><img src="img/avatar3.jpg" alt="" class="img-responsive"></a></div>
			<div class="comment_right clearfix">
				<div class="comment_info">Posted by <a href="#">Adam White</a><span>|</span> 25 apr 2019 <span>|</span><a href="#">Reply</a></div>
				<p>Cursus tellus quis magna porta adipiscin</p>
			</div>
			</li>
            
		</ol>
	</div><!-- End Comments -->
    
	<!--<h4>Leave a comment</h4>-->
	<!--<form action="#" method="post">
		<input class="form-control" type="text" name="name" value="Name" onfocus="if (this.value == 'Name') this.value = '';" onblur="if (this.value == '') this.value = 'Name';"/>
		<input class="form-control" type="text" name="mail" value="Email" onfocus="if (this.value == 'Email') this.value = '';" onblur="if (this.value == '') this.value = 'Email';"/>
		<textarea name="message" class="form-control"  rows="4" onfocus="if (this.value == 'Message...') this.value = '';" onblur="if (this.value == '') this.value = 'Message...';">Message...</textarea>
		<input type="reset" class="button_medium" value="Clear form"/>
		<input type="submit" class="button_medium" value="Post Comment"/>
	</form>-->
    
</div><!-- end col-right-->
</section><!-- end section-->
</div><!-- end row-->
</div><!-- end container-->
  
   <?php include('footer.php'); ?>

</body>
</html>