<?php
$host= "mysql";
$username= "root";
$password = "password";
$dbname = "phpmyadmin";

$con= new mysqli($host,$username,$password,$dbname);
if($con->connect_error){
    die("Ket noi that bai".$con->connect_error);
}


if (!isset($_COOKIE['token'])) {
    // The cookie is not present, send a 401 error response
    http_response_code(401);
    echo "Unauthorized access";
    exit();
}


//username from cookie
$parts = explode('.', $_COOKIE['token']);
$payload1 = $parts[1];
$claims = json_decode(base64_decode($payload1), true);
$TBusername = $claims['username'];
// receive data
$data = json_decode(file_get_contents('php://input'), true);
//data sample
// $username = 'ngoc123';
// $total_price = 0;
// $data = [
//     ["product_id" => 4, "product_quantity" => 5, "price" => 4500],
//     ["product_id" => 7, "product_quantity" => 1, "price" => 2700],
//     ["product_id" => 9, "product_quantity" => 2, "price" => 7000]
// ];

// foreach($data as $item) {
//     $total_price += $item['product_quantity'] * $item['price'];
// }
// $data[] = ["total_price" => $total_price];
$total_price= $data['total_price'];
// Prepare the SQL statement for inserting a new user
$stmt = $con->prepare("INSERT INTO tbl_order (user_name,total_price) VALUES (?,?)");
$stmt->bind_param("ss", $TBusername, $total_price);
$stmt->execute();
//get cart id
$sql_1 = "SELECT cart_id 
        FROM tbl_order 
        where user_name= '$TBusername' 
        ORDER BY cart_id DESC LIMIT 1 ";
$result =mysqli_query($con,$sql_1);
$result = mysqli_fetch_assoc($result);

$cart_id=$result['cart_id'];


$x=0;
while ($x < count($data['data_shoes'])) { 
    $product_id = $data['data_shoes'][$x]['id'];
    $product_quantity = $data['data_shoes'][$x]['quantity'];
    $price = $data['data_shoes'][$x]['price'];
    $stmt_2 = $con->prepare("INSERT INTO tbl_cart (cart_id, product_id, product_quantity,price)
    VALUES ( ?, ?, ?, ?)");
    $stmt_2->bind_param("ssss", $cart_id, $product_id, $product_quantity, $price);
    $stmt_2->execute();
    $x++;
}

$json = json_encode('Success');

// Output the JSON data
header('Content-Type: application/json');
echo $json;

//close connection

mysqli_close($con);
?>
