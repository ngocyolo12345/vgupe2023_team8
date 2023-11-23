<?php
include "../admin2/class/cart_class 2.php";
?>

<?php header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Access-Control-Allow-Headers: Authorization");  ?>

<?php
$json = file_get_contents("http://localhost:3000/users");
$data = json_decode($json, true);
$cart = new cart;
$index  = 0;
$y = 0;
$index = count($data); 
$data_array = $data[0];
// echo $index;
if($index !=0) {
// var_dump($data[1]);
$user_name = $data_array['user_name'];
$create_order = $cart -> create_order($user_name);
$get_cart = $cart -> get_cart($user_name);

while ($result = $get_cart->fetch_assoc()) {
    $cart_id = $result['cart_id'];
}
// echo $cart_id;
for ($x = 0; $x < $index; $x++) {
    $data_array = $data[$x];
    $product_id = $data_array['product_id'];
    $product_quantity = $data_array['product_quantity'];
    $cart -> create_cart($cart_id, $product_id, $product_quantity);
    $y = $y + 1;
}
if($y == $index && $y!=0) {
    $result = array("Validation" => "valid");
    echo json_encode($result);
} else {
    $result = array("Validation" => "unvalid");
    echo json_encode($result);
}
}
// ?>