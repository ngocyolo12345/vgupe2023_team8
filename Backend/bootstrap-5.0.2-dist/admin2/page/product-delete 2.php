<?php
include "../class/product_class 2.php";
$product = new product;
?>

<?php
$product = new product;
if (!isset($_GET['product_id']) || $_GET['product_id'] == NULL) {
    echo "<script>window.location = 'product-list.php'</sciprt";
} else {
    $product_id = $_GET['product_id'];
}
$delete_product = $product->delete_product($product_id);
?>