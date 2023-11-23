<?php
include "../database.php";
?>

<?php
class order
{
    private $db;
    public function __construct()
    {
        $this->db = new Database();
    }
    public function show_order()
    {
        $query = "SELECT * FROM tbl_order ORDER BY cart_id ASC";
        $result = $this->db->select($query);
        return $result;
    }
    public function show_carts($cart_id)
    {
        $query = "SELECT * FROM tbl_cart C join tbl_product P on P.product_id=C.product_id WHERE cart_id = '$cart_id' ORDER BY P.product_id";
        $result = $this->db->select($query);
        return $result;
    }
    
}
?>