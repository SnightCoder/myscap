<?php
//$im = file_get_contents("./GDIPlus_Image1.jpg");
//header("Content-type: image/jpeg");
//echo $im;
$imp="/myscap/GDIPlus_Image1.jpg";
?>

<?php
$page = $_SERVER['PHP_SELF'];
$sec = "1";
?>
<html>
    <head>
    <meta http-equiv="refresh" content="<?php echo $sec?>;URL='<?php echo $page?>'">
    </head>
    <body style="background-color:black;">
<img src="<?php echo $imp; ?>" />
    </body>
</html>

