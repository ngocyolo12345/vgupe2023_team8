<?php
// Connect to the database
$host= "mysql";
$username= "root";
$password = "password";
$dbname = "phpmyadmin";

$con= new mysqli($host,$username,$password,$dbname);
if($con->connect_error){
    die("Ket noi that bai".$con->connect_error);
}



// Receive the POST data
$gender = $_GET['gender'];
// $gender = "female";
// select value from post data
$sql = "SELECT `product_id` as id,`product_name` as name,`product_price` as price,`product_gender` as gender,`product_brand` as brand,`product_img` as imageURL,`product_description` as description FROM `tbl_product` where `product_gender`='$gender'" ;

$result =mysqli_query($con,$sql);

$data = array();
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
    
}
// select dirpath
$dir_path = '/app/bootstrap-5.0.2-dist/upload2/';
$i = 0; // Initialize counter variable
while ($i < count($data)) {
    $mid = $data[$i]['imageURL'];
    $file_link = $dir_path .$mid;
    $base64 = base64_encode(file_get_contents($file_link)); 
    $data[$i]['imageURL']=$base64;
    // Output current element of array
    $i++; // Increment counter variable
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