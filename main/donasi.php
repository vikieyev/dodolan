<!DOCTYPE html>
<html>
<head>
	
<title>
POS
</title>
<link rel="shortcut icon" href="images/favicon.png">
 <link href="css/bootstrap.css" rel="stylesheet">

    <link rel="stylesheet" type="text/css" href="css/DT_bootstrap.css">
  
  <link rel="stylesheet" href="css/font-awesome.min.css">
    <style type="text/css">
    
      .sidebar-nav {
        padding: 9px 0;
      }
    </style>
    <link href="css/bootstrap-responsive.css" rel="stylesheet">
<link href="../style.css" media="screen" rel="stylesheet" type="text/css" />
<link href="src/facebox.css" media="screen" rel="stylesheet" type="text/css" />
<script src="lib/jquery.js" type="text/javascript"></script>
<script src="src/facebox.js" type="text/javascript"></script>
<script type="text/javascript">
  jQuery(document).ready(function($) {
    $('a[rel*=facebox]').facebox({
      loadingImage : 'src/loading.gif',
      closeImage   : 'src/closelabel.png'
    })
  })
</script>
<?php
	require_once('auth.php');
?>
<?php
function createRandomPassword() {
	$chars = "003232303232023232023456789";
	srand((double)microtime()*1000000);
	$i = 0;
	$pass = '' ;
	while ($i <= 7) {

		$num = rand() % 33;

		$tmp = substr($chars, $num, 1);

		$pass = $pass . $tmp;

		$i++;

	}
	return $pass;
}
$finalcode='RS-'.createRandomPassword();
?>

 <script language="javascript" type="text/javascript">
/* Visit http://www.yaldex.com/ for full source code
and get more free JavaScript, CSS and DHTML scripts! */
<!-- Begin
var timerID = null;
var timerRunning = false;
function stopclock (){
if(timerRunning)
clearTimeout(timerID);
timerRunning = false;
}
function showtime () {
var now = new Date();
var hours = now.getHours();
var minutes = now.getMinutes();
var seconds = now.getSeconds()
var timeValue = "" + ((hours >12) ? hours -12 :hours)
if (timeValue == "0") timeValue = 12;
timeValue += ((minutes < 10) ? ":0" : ":") + minutes
timeValue += ((seconds < 10) ? ":0" : ":") + seconds
timeValue += (hours >= 12) ? " P.M." : " A.M."
document.clock.face.value = timeValue;
timerID = setTimeout("showtime()",1000);
timerRunning = true;
}
function startclock() {
stopclock();
showtime();
}
window.onload=startclock;
// End -->
</SCRIPT>	
</head>
<body>
<?php include('navfixed.php');?>
	<?php
$position=$_SESSION['SESS_LAST_NAME'];
if($position=='cashier') {
?>

<a href="../index.php">Logout</a>
<?php
}
if($position=='admin') {
?>
	
	<div class="container-fluid">
      <div class="row-fluid">
	<div class="span2">
          <div class="well sidebar-nav">
                     <ul class="nav nav-list">
              <li ><a href="index.php"><i class="icon-dashboard icon-2x"></i> Dashboard </a></li> 
			<li ><a href="sales.php?id=cash&invoice=<?php echo $finalcode ?>"><i class="icon-shopping-cart icon-2x"></i> Penjualan</a>  </li>             
			<li><a href="products.php"><i class="icon-list-alt icon-2x"></i> Barang/Jasa</a>                                     </li>
			<li ><a href="customer.php"><i class="icon-group icon-2x"></i> Pelanggan</a>                                    </li>
			<li><a href="supplier.php"><i class="icon-group icon-2x"></i> Suppliers</a>                                    </li>
			<li ><a href="salesreport.php?d1=0&d2=0"><i class="icon-bar-chart icon-2x"></i> Lap. Penjualan</a>                </li>                </li>
			<li class="active"><a href="donasi.php"><i class="icon-money icon-2x"></i> Donasi</a>
			<br><br><br><br><br><br>		
			<li>
			 <div class="hero-unit-clock">
		
			<form name="clock">
			<font color="white">Time: <br></font>&nbsp;<input style="width:150px;" type="submit" class="trans" name="face" value="">
			</form>
			  </div>
			</li>
				</ul>                               
          </div><!--/.well -->
        </div><!--/span-->
	<div class="span10">
	<div class="contentheader">
			<i class="icon-money"></i> Donasi
			</div>
			<ul class="breadcrumb">
			<li class="active">Donasi</li>
			</ul>
			<font style=" font:bold 23px 'Aleo'; text-shadow:1px 1px 25px #000; color:#000;"><center>Terima kasih <?php echo $_SESSION['SESS_FIRST_NAME']?> telah menggunakan aplikasi ini </center></font>
			<font style=" font:bold 23px 'Aleo'; text-shadow:1px 1px 25px #000; color:#000;"><center>Support anda sangat membantu untuk pengembangan aplikasi ini di masa depan </center></font>
			<font style=" font:bold 23px 'Aleo'; text-shadow:1px 1px 25px #000; color:#000;"><center>Kritik,saran dan donasi bisa dikirm ke no OVO berikut :</center></font>
			<br>
			<font style=" font:bold 30px 'Aleo'; text-shadow:1px 1px 25px #000; color:#f11;"><center> +6289504550566  </center></font>
			<br>
			<font style=" font:bold 30px 'Aleo'; text-shadow:1px 1px 25px #000; color:#111;"><center> AYO DODOLAN !  </center></font>
<div id="mainmain">





<?php
}
?>
<div class="clearfix"></div>
</div>
</div>
</div>
</div>
</body>
<?php include('footer.php'); ?>
</html>
