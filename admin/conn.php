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

        //Admin common
        //all student
        $squ=mysql_query("select * from users where rank =0");
        $counts=mysql_num_rows($squ);
        
        //Student registered toay
        $sqnu=mysql_query("select * from users where date ='$date'");
        $countnu=mysql_num_rows($sqnu);
        //Lecturers
        $squl=mysql_query("select * from users where rank =3");
        $countl=mysql_num_rows($squl);
        //Boards
        $squb=mysql_query("select * from users where rank =2");
        $countb=mysql_num_rows($squb);
        //
?>	