<?php
   include('../connect.php');
	if(!$db) {
	
		echo 'Could not connect to the database.';
	} else {
	
		if(isset($_POST['queryString'])) {
			$queryString = $db->quote($_POST['queryString']);
			
			if(strlen($queryString) >0) {

				$query = "SELECT customer_name FROM customer WHERE customer_name LIKE CONCAT('%', :queryString, '%') LIMIT 10";
				$q = $db->prepare($query);
				$q->bindParam(':queryString', $queryString); //tambahan nama toko//
				$q->execute();
				if($q) {
				echo '<ul>';
					while ($result = $q->fetch()) {
	         			echo '<li onClick="fill(\''.addslashes($result->customer_name).'\');">'.$result->customer_name.'</li>';
	         		}
				echo '</ul>';
					
				} else {
					echo 'OOPS we had a problem :(';
				}
			} else {
				// do nothing
			}
		} else {
			echo 'There should be no direct access to this script!';
		}
	}
?>