<?php
$host= "mysql";
$username= "root";
$password = "password";
$dbname = "phpmyadmin";

$con= new mysqli($host,$username,$password,$dbname);
if($con->connect_error){
    die("Ket noi that bai".$con->connect_error);
}
// $data = json_decode(file_get_contents('php://input'), true);
// $TBusername = $data['username'];
$TBusername ='';
$sql = "SELECT `Username`
        FROM user1
        WHERE Username = '$TBusername';
  " ;

  $result =mysqli_query($con,$sql);

  $data = array();
  while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;  
  }
if (count($data)>0){
    $response=[ 'token' => 'Username is already used'];
    echo json_encode($response);
    // echo 'Username is already used';
}else {
$data = json_decode(file_get_contents('php://input'), true);
$TBusername = $data['username'];
$TBpassword = $data['password'];
$hash = password_hash($TBpassword, PASSWORD_DEFAULT); 
$TBfirstname = $data['firstname'];
$TBlastname = $data['lastname'];
//   $TBusername = 'ngoc123';
//   $TBpassword = '123';
// $hash = password_hash($TBpassword, PASSWORD_DEFAULT); 
// $TBfirstname = 'nhat';
// $TBlastname = 'nguyen';
// echo $hash;
// Prepare the SQL statement for inserting a new user
$stmt = $con->prepare("INSERT INTO user1 (`Username`, `Password`,`firstname`,`lastname`) VALUES (?, ?, ?, ?)");

// Bind the parameters to the statement
$stmt->bind_param("ssss", $TBusername, $hash,$TBfirstname,$TBlastname);

// Execute the statement
$stmt->execute();
$response=[ 'token' => 'done'];
echo json_encode($response);
// Close the database connection
$con->close();
}
?>