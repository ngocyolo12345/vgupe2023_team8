<?php
$servername = "mysql";
$username = "user";
$password = "password";
$dbname = "phpmyadmin";

$con = new mysqli($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}

if (!isset($_COOKIE['token'])) {
  // The cookie is not present, send a 401 error response
  http_response_code(401);
  echo "Unauthorized access";
  exit();
}


$parts = explode('.', $_COOKIE['token']);
$payload1 = $parts[1];
$claims = json_decode(base64_decode($payload1), true);
$TBusername = $claims['username'];
// If login form is submitted 
// $data = json_decode(file_get_contents('php://input'), true);
// $TBusername = $data['username'];

  // Testing user
  // $TBusername = 'ngoc123';

  if($TBusername == 'admin'){
    $response = [
      'username' => 'admin'
    ];
    echo json_encode($response);    
  }
  else{
    echo 'nothing';
  }
  #fetch data array
  

  
  //close connection
  
  mysqli_close($con);

?>