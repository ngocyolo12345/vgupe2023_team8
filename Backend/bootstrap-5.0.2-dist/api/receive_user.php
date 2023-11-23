
<?php
include "../admin2/class/user_class-2.php";
?>
<?php ;
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Access-Control-Allow-Headers: Authorization"); 
?> 
<?php
$json = file_get_contents("http://localhost:3000/users");
$data = json_decode($json, true);
$user = new user;

$data_array = $data[0];
// var_dump($data_array['firstName']);
// echo $data_array['firstName'];
$first_name = $data_array['firstName'];
$last_name = $data_array['lastName'];
$user_name = $data_array['userName'];
$user_password = $data_array['userPassword'];
$user_birthday = $data_array['userDOB'];
$user_gender = $data_array['userGender'];
$phone_number = $data_array['phoneNumber'];

$user_check = $user->check_already($user_name);
if ($user_check) {
    $insert_user = $user->insert_user($first_name, $last_name, $user_name, $user_password, $user_birthday, $user_gender, $phone_number);
    $result = array("Validation" => "valid");
    echo json_encode($result);
} else {
    $result = array("Validation" => "unvalid");
    echo json_encode($result);
}
?>


