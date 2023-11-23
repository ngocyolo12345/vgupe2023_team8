<?php
$servername = "mysql";
$username = "user";
$password = "password";
$dbname = "phpmyadmin";



if (!isset($_COOKIE['token'])) {
  // The cookie is not present, send a 401 error response
  http_response_code(401);
  echo "Unauthorized access";
  exit();
}


  setcookie('token', "", time() - (86400 * 10), '/', "", true, true);
  echo true;
?>