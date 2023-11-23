<?php
include "header2.php";
include "sidebar2.php";
include "../class/product_class 2.php";
?>

<?php
$product = new product;
$show_product = $product->show_product();
?>

<?php
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $update_size = $product->update_size($_POST);
}
?>
<body>
<div id="content" class="p-4 p-md-5 pt-5">
    <div class="admin-product-add">
        <h1>Product amount</h1>
        <form action="" method="POST" enctype="multipart/form-data">
            <label for="" style="color:black;">Product</label>
            <select class="form-select" onchange="enable_size(this)" id="product_id" name="product_id">
                <option value="0">Product</option>
                <?php
                while ($result = $show_product->fetch_assoc()) {
                ?>
                    <option value="<?php echo $result['product_id'] ?>"><?php echo $result['product_name'] ?></option>
                <?php
                }
                ?>
            </select>
            <label for="" style="color:black;">Size</label>
            <select class="form-select" name="product_size" id="product_size" disabled="">
                <option value="1">Size</option>

            </select>
            <label for="" style="color:black;">Amount</label>
            <input required class="form-control" type="text" placeholder="Amount" name="product_amount">
            <br>
            <button class="btn btn-success" type="submit">Save</button>
        </form>
    </div>
</div>

<script type="text/javascript">
    function enable_size(product) {
        console.log(product.value)
        if (product.value != 0) {
            document.getElementById('product_size').disabled = false;
        } else {
            document.getElementById('product_size').disabled = true;
        }
    }
</script>
<script>
    $(document).ready(function() {
        $("#product_id").change(function() {
            // alert($(this).val())
            var x = $(this).val()
            $.get("product-amount-ajax 2.php", {
                product_id: x
            }, function(data) {
                $("#product_size").html(data);
            })
        })
    })
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
<script src="../../js2/sidebar/jquery.min.js"></script>
<script src="../../js2/sidebar/popper.js"></script>
<script src="../../js2/sidebar/bootstrap.min.js"></script>
<script src="../../js2/sidebar/main.js"></script>
<script src="https://code.jquery.com/jquery-3.6.4.js" integrity="sha256-a9jBBRygX1Bh5lt8GZjXDzyOB+bWve9EiO7tROUtj/E=" crossorigin="anonymous"></script>



</body>

</html>