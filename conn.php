<?php 
$connect = mysql_connect("localhost", "root", "") ;
            if (!$connect)
                {
                    die("unable to connect to page");
                }

        $db = mysql_select_db("aoislamic" , $connect);
        if (!$db)
        {
            die("unable to connect to database");
        }
		$foot=mysql_query('select footer from footer where footer_id=1');
		$foota=mysql_fetch_array($foot);
		$footer=$foota['footer'];
		$time=date('h:i: a');
?>	