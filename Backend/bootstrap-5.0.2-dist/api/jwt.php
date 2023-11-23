<?php
$servername = "mysql";
$username = "user";
$password = "password";
$dbname = "phpmyadmin";

$con = new mysqli($servername, $username, $password, $dbname);

if ($con->connect_error) {
    die("Connection failed: " . $con->connect_error);
}
session_start();

// If user is already logged in, redirect to home page
// if (isset($_SESSION['username'])) {
//   header('Location: /home');
//   exit;
// }

// // If login form is submitted
if (isset($_POST['username'], $_POST['password'])) {
  $TBusername = $_POST['username'];
  $TBpassword = $_POST['password'];
  // Testing user
  // $TBusername = 'haoxinhdep';
  // $TBpassword = 'xh-180202';
  $sql = "SELECT `Username`,`Password`
        FROM user1
        WHERE Username = '$TBusername'
        AND `Password` = '$TBpassword';
  " ;

  $result =mysqli_query($con,$sql);

  $data = array();
  while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;  
  }
  
  // Validate username and password
  if (isset($data[0]['Username']) &&isset($data[0]['Password'])) {
    $secret_key = 'Nhatdeptraithanhlichvodichkhapvutru';

    
    // Define the header and payload for the JWT token
    $header = '{"alg":"HS256","typ":"JWT"}';
    $payload = '{"username":"'.$data[0]['Username'].'","password":"'.$data[0]['Password'].'","exp":' . (time() + 86400) . '}';
    
    // Encode the header and payload as base64url strings
    $base64_header = rtrim(strtr(base64_encode($header), '+/', '-_'), '=');
    $base64_payload = rtrim(strtr(base64_encode($payload), '+/', '-_'), '=');
    
    // Concatenate the base64url strings with a period character to form the JWT token
    $jwt_token = $base64_header . '.' . $base64_payload;
    
    // Sign the JWT token by hashing it with the secret key
    $signature = hash_hmac('sha256', $jwt_token, $secret_key, true);
    
    // Encode the signature as a base64url string
    $base64_signature = rtrim(strtr(base64_encode($signature), '+/', '-_'), '=');
    
    // Concatenate the JWT token with the base64url-encoded signature to form the final JWT token
    $jwt_token .= '.' . $base64_signature;
    
    
    // Split the JWT token into its constituent parts
    $parts = explode('.', $jwt_token);
    $header = $parts[0];
    $payload = $parts[1];
    $signature = $parts[2];
    
    // Verify the signature by hashing the header and payload with the secret key
    $hash = hash_hmac('sha256', $header . '.' . $payload, $secret_key, true);
    $base64_hash = rtrim(strtr(base64_encode($hash), '+/', '-_'), '=');
    
    // Check if the calculated signature matches the actual signature
    if ($base64_hash === $signature) {
        // Decode the payload and print the claims
        // $claims = json_decode(base64_decode($payload), true);
        // set cookie
        setcookie('token', $jwt_token, time() + (86400 * 1), '/');
    
        // Return token and user data as JSON response
        $response = [
          'token' => $jwt_token,
          // 'username' =>  $TBusername,
            // Add more user data here
          
        ];
        echo json_encode($response);
    } else {
        echo 'Invalid token';
    }
  }
}
?>