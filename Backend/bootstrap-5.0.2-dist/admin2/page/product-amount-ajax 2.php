<?php
include "../class/product_class 2.php";
?>

<?php
$product = new product;
$product_id = $_GET['product_id'];
?>

<?php
$show_size = $product->show_size($product_id);
if ($show_size) {
?>
    <option value="#">Size</option>
    <?php
    while ($result = $show_size->fetch_assoc()) {
    ?>
        <option value="<?php echo $result['product_size'] ?>"><?php echo $result['product_size'] ?></option>
    <?php
    }
    ?>
<?php
}
?>