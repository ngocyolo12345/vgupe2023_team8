<?php
include "../database.php";
?>

<?php
class product
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }
    public function show_product()
    {
        $query = "SELECT * FROM tbl_product ORDER BY product_id DESC";
        $result = $this->db->select($query);
        return $result;
    }
    public function show_size($product_id)
    {
        $query = "SELECT * FROM tbl_product_size WHERE product_id = '$product_id'";
        $result = $this->db->select($query);
        return $result;
    }
    public function update_size()
    {
        $product_id = $_POST['product_id'];
        $product_size = $_POST['product_size'];
        $product_amount = $_POST['product_amount'];
        $query = "UPDATE tbl_product_size SET product_amount = '$product_amount' WHERE product_id = '$product_id' AND product_size='$product_size'";
        $result = $this->db->select($query);
        return $result;
    }
    public function update_product($product_id)
    {

        $product_gender = $_POST['product_gender'];
        $product_price = $_POST['product_price'];
        // $product_img = $_FILES['product_img']['name'];
        $product_description = addslashes($_POST['product_description']);
        $query = "UPDATE tbl_product SET product_gender = '$product_gender', product_price = '$product_price', product_description = '$product_description'
        WHERE product_id = '$product_id'";
        $result = $this->db->update($query);
        if ($result) {
            $product_size = $_POST['product_size'];
            $query = "DELETE FROM tbl_product_size WHERE product_id = '$product_id'";
            $result = $this->db->delete($query);
            foreach ($product_size as $key2 => $value) {
                $query = "INSERT INTO tbl_product_size (product_id, product_size) VALUES ('$product_id', '$value')";
                $result = $this->db->insert($query);
            }
            if(!isset($_FILES['product_imgs']['name'])) {
                $filename = $_FILES['product_imgs']['name'];
                $tmpname = $_FILES['product_imgs']['tmp_name'];
                $query = "DELETE FROM tbl_product_imgs WHERE product_id = '$product_id'";
                $result = $this->db->delete($query);
                foreach ($filename as $key1 => $value) {
                    move_uploaded_file($tmpname[$key1], "../../upload2/" . $value);
                    $query = "INSERT INTO tbl_product_imgs (product_id, product_image) VALUES ('$product_id', '$value')";
                    $result = $this->db->insert($query);
            }
            if($_FILES['product_img']['name']!="") {
                $product_img = $_FILES['product_img']['name'];
                move_uploaded_file($_FILES['product_img']['tmp_name'], "../../upload2/" . $_FILES['product_img']['name']);
                $query = "UPDATE tbl_product SET product_img = '$product_img' WHERE product_id = '$product_id'";
                $result = $this->db->insert($query);
            }
            
        }
        if($result){
            echo"<script> window.location.href='product-list 2.php';</script>";
        }
        return $result;        
    }
}
    public function show_selected_images($product_id)
    {
        $query = "SELECT * FROM tbl_product_imgs WHERE product_id = '$product_id'";
        $result = $this->db->select($query);
        return $result;
    }
    public function get_product($product_id)
    {
        $query = "SELECT * FROM tbl_product WHERE product_id = '$product_id'";
        $result = $this->db->select($query);
        return $result;
    }
    public function insert_product()
    {
        $product_name = addslashes($_POST['product_name']);
        $product_brand = $_POST['product_brand'];
        $product_gender = $_POST['product_gender'];
        $product_price = $_POST['product_price'];
        $product_img = $_FILES['product_img']['name'];
        move_uploaded_file($_FILES['product_img']['tmp_name'], "../../upload2/" . $_FILES['product_img']['name']);
        $product_description = addslashes($_POST['product_description']);


        $query = "INSERT INTO tbl_product (
        product_name, 
        product_brand, 
        product_gender, 
        product_price, 
        product_img,
        product_description) 
        VALUES ( 
        '$product_name', 
        '$product_brand', 
        '$product_gender', 
        '$product_price', 
        '$product_img',
        '$product_description')";
        $result = $this->db->insert($query);
        if ($result) {
            $query = "SELECT * FROM tbl_product ORDER BY product_id DESC LIMIT 1";
            $result = $this->db->select($query)->fetch_assoc();
            $product_id = $result['product_id'];
            $filename = $_FILES['product_imgs']['name'];
            $tmpname = $_FILES['product_imgs']['tmp_name'];
            foreach ($filename as $key => $value) {
                move_uploaded_file($tmpname[$key], "../../upload2/" . $value);
                $query = "INSERT INTO tbl_product_imgs (product_id, product_image) VALUES ('$product_id', '$value')";
                $result = $this->db->insert($query);
            }
            $product_size = $_POST['product_size'];
            foreach ($product_size as $key => $value) {
                $query = "INSERT INTO tbl_product_size (product_id, product_size) VALUES ('$product_id', '$value')";
                $result = $this->db->insert($query);
            }
            if($result){
                echo"<script> window.location.href='product-list 2.php';</script>";
            }
        }

        // header('Location:product-list 2.php');
        return $result;
    }
    public function delete_product($product_id)
    {
        $query = "DELETE FROM tbl_product WHERE product_id = '$product_id'";
        $result = $this->db->delete($query);
        if($result){
            echo"<script> window.location.href='product-list 2.php';</script>";
        }
        return $result;
    }
}
?>