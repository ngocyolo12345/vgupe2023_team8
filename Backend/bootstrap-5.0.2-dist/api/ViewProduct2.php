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
$id = $_GET['id'];
// $id = 2;

// select value from post data
$sql = "SELECT  product_id as id, 
                product_name as name, 
                product_price as price, 
                product_gender as gender, 
                product_brand as brand,
                product_img as imageURL, 
                product_description as description, 
                MAX(CASE WHEN product_id = $id AND row_num = 1 THEN product_image END) AS image1,
                MAX(CASE WHEN product_id = $id AND row_num = 2 THEN product_image END) AS image2,
                MAX(CASE WHEN product_id = $id AND row_num = 3 THEN product_image END) AS image3,
                MAX(CASE WHEN product_id = $id AND row_num = 4 THEN product_image END) AS image4
                FROM (
                    SELECT 
                    p.product_id as product_id, 
                    product_name, 
                    product_price, 
                    product_gender, 
                    product_brand,
                    product_img, 
                    product_description, 
                    product_image,
                    ROW_NUMBER() OVER (PARTITION BY product_id ORDER BY product_id) AS row_num
                    FROM tbl_product_imgs pi
                    JOIN tbl_product p on p.product_id= pi.product_id
                    WHERE p.product_id = $id
                ) subquery
                GROUP BY product_id;
" ;

$result =mysqli_query($con,$sql);

$data = array();
while ($row = mysqli_fetch_assoc($result)) {
    $data[] = $row;
    
}
// select dirpath
$dir_path = '/app/bootstrap-5.0.2-dist/upload2/';
$i = 0; // Initialize counter variable
while ($i<count($data)){
    $mid = $data[$i]['imageURL'];
    $file_link = $dir_path .$mid;
    $base64 = base64_encode(file_get_contents($file_link)); 
    $data[$i]['imageURL']=$base64;
    //image base64
    $mid = $data[$i]['image1'];
    $file_link2 = $dir_path .$mid;
    $base64 = base64_encode(file_get_contents($file_link2)); 
    $data[$i]['image1']=$base64;
    $mid = $data[$i]['image2'];
    $file_link2 = $dir_path .$mid;
    $base64 = base64_encode(file_get_contents($file_link2)); 
    $data[$i]['image2']=$base64;
    $mid = $data[$i]['image3'];
    $file_link2 = $dir_path .$mid;
    $base64 = base64_encode(file_get_contents($file_link2)); 
    $data[$i]['image3']=$base64;
    $mid = $data[$i]['image4'];
    $file_link2 = $dir_path .$mid;
    $base64 = base64_encode(file_get_contents($file_link2)); 
    $data[$i]['image4']=$base64;
    $i++;
// Output current element of array
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