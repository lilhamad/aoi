 <nav>
<div class="megamenu_container">
<a id="megamenu-button-mobile" href="#">Menu</a><!-- Menu button responsive-->
    
	<!-- Begin Mega Menu Container -->
	<ul class="megamenu">
		<!-- Begin Mega Menu -->
       
       	<li><a href="index.php" class="drop-down">Home</a>

		<li><a href="javascript:void(0)" class="drop-down">Courses</a>
		<!-- Begin Item -->
		<div class="drop-down-container">
        <hr>
       <div class="row">
            <?php while($roca=mysql_fetch_array($sqca)){ $catid=$roca['category_id']; ?>
				<div class="col-md-3">
					<h5><?php echo $roca['category']; ?></h5>
					<ul class="list-menu">
					<?php $sqcc=mysql_query("select * from course where category='$catid'"); while($rocc=mysql_fetch_array($sqcc)){ $cosid=$rocc['course_id']; ?> 
						<li><a href="#" title="All courses"><?php echo $rocc['course_title']; ?></a></li><?php } ?>
					</ul>
				</div>
				<?php } ?>
                </div><!-- End row -->
		</div><!-- End Item Container -->
		</li><!-- End Item -->

               	<li><a href="registration_student.php" class="drop-down">Register</a>

		<li><a href="lectures.php?page=1" class="drop-down">Knowledge hall</a>
		
		</li><!-- End Item -->
        
		<li><a href="library.php" class="nodrop-down">Library</a></li>
        
      

        <li><a href="contact.php" class="drop-down">Contacts</a></li>
        <li><a href="about.php" class="drop-down">About</a></li>
        <li><a href="testimonies" class="drop-down">Testimonial</a></li>
        <li><a href="#" class="drop-down">Suggestion</a></li>
        <li><a href="#" class="drop-down">FAQs</a></li>
        <!-- End Item -->
	</ul><!-- End Mega Menu -->
</div>
</nav><!-- /navbar -->