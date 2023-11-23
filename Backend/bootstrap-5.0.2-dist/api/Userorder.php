<?php
// Connect to the database
$servername = "mysql";
$username = "user";
$password = "password";
$dbname = "phpmyadmin";

$con = new mysqli($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

// Receive the POST data
$parts = explode('.', $_COOKIE['token']);
$payload1 = $parts[1];
$claims = json_decode(base64_decode($payload1), true);
$TBusername = $claims['username'];
// test username
// $TBusername = 'nhat123';
// select value from post data
$sql = "SELECT *
        FROM tbl_order
        WHERE user_name = '$TBusername';
" ;

$result =mysqli_query($con,$sql);

$data = array();
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}



$json = json_encode($data);

// Output the JSON data
header('Content-Type: application/json');
echo $json;
#fetch data array

mysqli_free_result($result);

//close connection

mysqli_close($con);
?>