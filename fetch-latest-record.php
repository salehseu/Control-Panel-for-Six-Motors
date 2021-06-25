<?php  

$sname = "localhost";
$uname = "root";
$password = "";

$db_name = "robot";

$conn = mysqli_connect($sname, $uname, $password, $db_name);

if (!$conn) {
	echo "Connection failed!";
	exit();
}


$sql = mysqli_query($conn, "SELECT * FROM motors ORDER BY angle1 DESC LIMIT 1");

$print_data = mysqli_fetch_row($sql);




$sql2 = mysqli_query($conn, "SELECT * FROM onvalues ORDER BY OnV DESC LIMIT 1");

$print_data2 = mysqli_fetch_row($sql2);

$sql3 = mysqli_query($conn, "SELECT * FROM offvalues ORDER BY OffV DESC LIMIT 1");

$print_data3 = mysqli_fetch_row($sql3);

echo " The Last Data Saved For Motors Angle...";
echo "<br>";
echo "<br>";


echo "SAVE";
echo"<hr noshade>";

echo "The angle of Motor-1 = ".$print_data[0];
echo "<br>";
echo "The angle of Motor-2 =  ".$print_data[1];
echo "<br>";
echo "The angle of Motor-3 =  ".$print_data[2];
echo "<br>";
echo "The angle of Motor-4 =  ".$print_data[3];
echo "<br>";
echo "The angle of Motor-5 =  ".$print_data[4];
echo "<br>";
echo "The angle of Motor-6 =  ".$print_data[5];
echo "<br>";
echo"<br>";
echo"<br>";




echo"ON ";
echo "<hr noshade>";
echo "OnV =  ".$print_data2[0];
echo "<br>";
echo "<br>";


echo"OFF ";
echo"<hr noshade>";
echo "OffV =  ".$print_data3[0];
echo "<br>";
echo "<br>";



?>





