<?php
include "header2.php";
include "sidebar2.php";
include "../class/order_class 2.php"
?>

<?php
$order = new order;
$show_order = $order->show_order();
?>

<body>
    <div id="content" class="p-4 p-md-5 pt-5">
        <div class="admin-product-list">

            <table class="table table-hover">
                <thead>
                    <tr class="table-warning">
                        <th scope="col">#</th>
                        <th scope="col">Username</th>
                        <th scope="col">Total Value</th>
                        <th scope="col">Cart List</th>
                        <!-- <th scope="col">Gender</th>
                    <th scope="col">Price</th>
                    <th scope="col">Option</th>
                    <th scope="col">Description</th> -->
                    </tr>
                </thead>
                <tbody>
                    <!-- An example of a row -->
                    <?php
                    while ($result = $show_order->fetch_assoc()) {
                        $cart_id = $result['cart_id'];
                        $show_carts = $order->show_carts($cart_id);
                    ?>
                        <tr class="table-primary">
                            <th scope="row"><?php echo $result['cart_id']; ?></th>
                            <td><?php echo $result['user_name']; ?></td>
                            <td><?php echo number_format($result['total_price']); ?></td>

                            <td>
                                <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#message<?php echo $result['cart_id']; ?>" class="accordion-toggle">Cart List</button>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4" class="hiddenRow">
                                <div class="accordian-body collapse" id="message<?php echo $result['cart_id']; ?>">
                                    <table class="table" >
                                        <thead>
                                            <tr class="table-danger">
                                                <!-- <th scope="col">Order</th> -->
                                                <th scope="col">Product</th>
                                                <th scope="col">Price of each product</th>
                                                <th scope="col">Buying quantity</th>
                                                <th scope="col">Total value</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <?php
                                            while ($result1 = $show_carts->fetch_assoc()) {
                                            ?>
                                                <tr>
                                                    <!-- <th scope="row"><?php echo $result1['cart_id']; ?></th> -->
                                                    <td class="table-success"><?php echo $result1['product_name']; ?></td>
                                                    <td class="table-success"><?php echo number_format($result1['product_price']); ?> vnđ</td>
                                                    <td class="table-success"><?php echo $result1['product_quantity']; ?></td>
                                                    <td class="table-success"><?php echo number_format($result1['price']); ?></td>
                                                </tr>
                                            <?php
                                            }
                                            ?>
                                        </tbody>
                                    </table>
                                </div>
                            </td>
                        </tr>
                    <?php
                    }
                    ?>
                    <!-- An example of a row -->
                </tbody>
            </table>
        </div>
    </div>















    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <script src="../../js2/sidebar/jquery.min.js"></script>
    <script src="../../js2/sidebar/popper.js"></script>
    <script src="../../js2/sidebar/bootstrap.min.js"></script>
    <script src="../../js2/sidebar/main.js"></script>

</body>

</html>