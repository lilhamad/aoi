
<footer>
  <div class="container">
  	<div class="row">
    	
        <!--
        <div class="col-md-4 col-sm-4" id="brand-footer">
   	    	<p><img src="img/logo-footer.jpg" alt=""></p>
            <p><?php echo $footer; ?></p>
            <div class="twitter"><a href="#" >Follow on Twitter</a></div>
			<div class="fb"><a href="#">Follow on  Facebook</a></div>  
        </div>
        -->
        <!--
        <div class="col-md-4 col-sm-4" id="contacts-footer">
        	<h4>Contacts</h4>
            <ul>
            	<li><i class="icon-home"></i> 11 Fifth Ave, Loftus - NEW JERSEY, US</li>
            	<li><i class="icon-phone"></i> Telephone: + 61 (2) 8093 3400</li>
                <li><i class="icon-phone-sign"></i> Fax: +61 (2) 9542 3599</li>
                <li><i class="icon-envelope"></i> Email: <a href="#"><span class="__cf_email__" data-cfemail="a2d1d7c0cfcbd1d1cbcdccd1e2c6cdcfc3cbcc8cc1cdcf">[email&#160;protected]</span><script data-cfhash='f9e31' type="text/javascript">
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
            -->
        <div class="col-md-4 col-sm-4" id="quick-links">
        	<h4>Quick links</h4>            
            <ul>
                <li><a href="index.php" >Home</a></li>
                <li><a href="library.php" >Library</a></li>
                <li><a href="lectures.php?page=1" >Lectures</a></li>
            	<li><a href="about.php" >About</a></li>
                <li><a href="contact.php" >Contact</a></li>
                <li><a href="news.php" >News</a></li>
                <li><a href="#" >Registration</a></li>
                <li><a href="testimonies.php" >Testimonies</a></li>
                <li><a href="#" >Suggestions</a></li>
            </ul>
        </div>
        
    </div>
  </div>
  </footer><!-- End footer-->

  <center> At-tibyan Online Islamic School <br>
  &copy; 2016 </center>
<div id="toTop">Back to Top</div>

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

 <!-- REVOLUTION SLIDER -->
 <script src="rs-plugin/js/jquery.themepunch.plugins.min.js"></script>
 <script type="text/javascript" src="rs-plugin/js/jquery.themepunch.revolution.min.js"></script>
 <script src="js/revolutio-slider-func.js"></script>
 <?php
mysql_close($connect);
  ?>