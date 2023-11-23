<?php
include "../admin2/database.php";
?>
<?php
class cart
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }
    
    public function create_order($user_name)
    {
        $query = "INSERT INTO tbl_order (user_name) VALUES ('$user_name')";
        $result = $this->db->insert($query);
        return $result;
    }
    public function get_cart($user_name)
    {
        $query = "SELECT cart_id FROM tbl_order ORDER BY cart_id DESC LIMIT 1";
        $result = $this->db->select($query);
        return $result;
    }
    public function create_cart($cart_id, $product_id, $product_quantity) {
        $query = "INSERT INTO tbl_cart (cart_id, product_id, product_quantity)
        VALUES ('$cart_id', '$product_id', '$product_quantity')";
        $result = $this->db->insert($query);
        return $result;
    }   
}
?> 
