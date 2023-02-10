<?php
session_start();
include('../connect.php');
$kode_barcode = "";
$kode_barcode = $_POST['product'];
$a = $_POST['invoice'];
$b = $_POST['product'];
$c = $_POST['qty'];
$w = $_POST['pt'];
$date = $_POST['date'];
$discount = $_POST['discount'];
$result = $db->prepare("SELECT * FROM products WHERE product_id= :userid or kode_barcode= :kode_barcode");
$result->bindParam(':userid', $b);
$result->bindParam(':kode_barcode', $kode_barcode);
$result->execute();
$asasa ="";
//if($result2->fetchColumn() == true){

	for($i=0; $row = $result->fetch(); $i++){
		$asasa=$row['price'];
		$code=$row['product_code'];
		$gen=$row['gen_name'];
		$name=$row['product_name'];
		$p=$row['profit'];
		echo $row['product_name'];
	}
	if($asasa != ""){
		//edit qty
		$sql = "UPDATE products 
		        SET qty=qty-?
				WHERE product_id=? or kode_barcode=?";
		$q = $db->prepare($sql);
		$q->execute(array($c,$b,$kode_barcode));
		$fffffff=intval($asasa)-intval($discount);
		$d=$fffffff*$c;
		$profit=$p*$c;
		// query
		$sql = "INSERT INTO sales_order (invoice,product,qty,amount,name,price,profit,product_code,gen_name,date) VALUES (:a,:b,:c,:d,:e,:f,:h,:i,:j,:k)";
		$q = $db->prepare($sql);
		$q->execute(array(':a'=>$a,':b'=>$b,':c'=>$c,':d'=>$d,':e'=>$name,':f'=>$asasa,':h'=>$profit,':i'=>$code,':j'=>$gen,':k'=>$date));
		header("location: sales.php?id=$w&invoice=$a");
	}else{
		//echo $result->fetchColumn(); 
		echo "<center style='right:50%;top:50%;margin: 0;position:absolute;'><h1> Barcode Product Tidak Terdaftar! </h1></center>";
		echo "<script type='text/javascript'>alert('Barcode Product Tidak Terdaftar!');history.back();</script>";
		
	}
?>