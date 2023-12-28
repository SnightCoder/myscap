<?php
//$im = file_get_contents("./GDIPlus_Image1.jpg");
//header("Content-type: image/jpeg");
//echo $im;
$imp="/myscap/GDIPlus_Image1.jpg";
?>

<?php
//$page = $_SERVER['PHP_SELF'];
//$sec = "1";
?>

<html>
    <head>
	
 <style>
        * {
            margin: 0;
            padding: 0;    
	}
        .imgbox {
            display: grid;
            height: 100%;
        }
        .center-fit {
            max-width: 100%;
            max-height: 100vh;
            margin: auto;
	}
    </style>
   <!-- <meta http-equiv="refresh" content="<?php echo $sec?>;URL='<?php echo $page?>'">-->
    </head>
    <body style="background-color:black;">
<img id="imgC" src="<?php echo $imp; ?>" alt="scap" class="center-fit" loading="lazy" />
<script>

setInterval(refreshImage, 1000);

function refreshImage(){
	var timestamp = new Date().getTime();     
     
	var el = document.getElementById("imgC");     
     
	el.src = "/myscap/GDIPlus_Image1.jpg?t=" + timestamp;  
}

</script>

</body>
</html>
