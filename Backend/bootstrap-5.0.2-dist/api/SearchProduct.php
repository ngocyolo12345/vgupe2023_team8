<?php
//connect database
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

$query = $_GET['searchTerm'];
#write query
// $sql = "SELECT `product_id` as id,
//         `product_name` as name,
//         `product_price` as price,
//         `product_gender` as gender,
//         `product_brand` as brand,
//         `product_img` as imageURL,
//         `product_description` as description 
//         FROM `tbl_product`";
$sql = "SELECT  `product_id` as id,
        `product_name` as name,
        `product_price` as price,
        `product_gender` as gender,
        `product_brand` as brand,
        `product_img` as imageURL,
        `product_description` as description 
        FROM `tbl_product` 
        WHERE product_name LIKE '%$query%'";
#Query the database
$result =mysqli_query($con,$sql);
$data = array();
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
}
$dir_path = '/app/bootstrap-5.0.2-dist/upload2/';
$i = 0; 
while ($i < count($data)) {
    $mid = $data[$i]['imageURL'];
    $file_link = $dir_path .$mid;
    $base64 = base64_encode(file_get_contents($file_link)); 
    $data[$i]['imageURL']=$base64;
    // Output current element of array
    $i++; // Increment counter variable
}

//search engine


// $data = array_filter($data, function($item) use ($query) {
//     return strpos(strtolower($item['name']), strtolower($query)) !== false ;
//   });

// Output the JSON data
$json = json_encode($data);
header('Content-Type: application/json');
echo $json;
#fetch data array

mysqli_free_result($result);

//close connection

mysqli_close($con);


?>