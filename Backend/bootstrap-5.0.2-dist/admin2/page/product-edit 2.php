<?php
include "header2.php";
include "sidebar2.php";
include "../class/product_class 2.php"
?>
<?php
$product = new product;
if (!isset($_GET['product_id']) || $_GET['product_id'] == NULL) {
    echo "<script>window.location = 'product-list 2.php'</sciprt>";
} else {
    $product_id = $_GET['product_id'];
}
$get_product = $product->get_product($product_id);
$get_size = $product->show_size($product_id);
$get_imgs = $product->show_selected_images($product_id);
if ($get_product) {
    $resultA = $get_product->fetch_assoc();
}
?>

<?php
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $update_product = $product->update_product($product_id, $_POST, $_FILES);
    // var_dump($product_id, $_POST, $_FILES);
}
?>

<body onpageshow="check_gender(),check_size()">

    <div id="content" class="p-4 p-md-5 pt-5">
        <div class="admin-product-add">
            <h1>Edit product</h1>
            <form action="" method="POST" enctype="multipart/form-data">
                <label for="" style="color:black;">Name</label>
                <input required class="form-control" type="text" placeholder="<?php echo $resultA['product_name']; ?>" name="product_name" disabled>
                <label for="" style="color:black;">Brand</label>
                <input required class="form-control" type="text" placeholder="<?php echo $resultA['product_brand']; ?>" name="product_brand" disabled>
                <label for="" style="color:black;">Gender</label>
                <div class="form-check">
                    <input required class="form-check-input" type="radio" name="product_gender" id="product_gender_M" value="male">
                    <label class="form-check-label" for="product_gender_M" style="color:blue;">
                        Male
                    </label>
                </div>
                <div class="form-check">
                    <input required class="form-check-input" type="radio" name="product_gender" id="product_gender_F" value="female">
                    <label class="form-check-label" for="product_gender_F" style="color:#FF33C1;">
                        Female
                    </label>
                </div>
                <label for="" style="color:black;">Size</label>
                <div class="form-check">
                    <label class="radio"><input type="checkbox" name="product_size[]" value="39" id="product_size_39"> <span>39</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="40" id="product_size_40"> <span>40</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="40.5" id="product_size_40.5"> <span>40.5</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="41" id="product_size_41"> <span>41</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="42" id="product_size_42"> <span>42</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="42.5" id="product_size_42.5"> <span>42.5</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="43" id="product_size_43"> <span>43</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="44" id="product_size_44"> <span>44</span> </label><br>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="44.5" id="product_size_44.5"> <span>44.5</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="45" id="product_size_45"> <span>45</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="45.5" id="product_size_45.5"> <span>45.5</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="46" id="product_size_46"> <span>46</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="47" id="product_size_47"> <span>47</span> </label>
                    <label class="radio"><input type="checkbox" name="product_size[]" value="47.5" id="product_size_47.5"> <span>47.5</span> </label>
                </div>
                <label for="" style="color:black;">Price</label>
                <input required class="form-control" type="number" step="any" name="product_price" value="<?php echo $resultA['product_price']; ?>">
                <!-- <label for="" style="color:black;">Amount</label>
                <input required class="form-control" type="text" placeholder="Amount" name="product_quantity"> -->
                <label for="" style="color:black;">Main image</label>
                <input class="form-control" type="file" name="product_img">
                <label for="" style="color:black;">Side Image (Maximum 4 pictures)</label>
                <input multiple class="form-control" type="file" name="product_imgs[]">
                <div class="form-group">
                    <label for="exampleFormControlTextarea1" style="color:green;">Description</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="product_description" value="<?php echo $resultA['product_description']; ?>"><?php echo $resultA['product_description']; ?></textarea>
                </div>
                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <div class="card text-white bg-danger">
                            <img src="../../upload2/<?php echo $resultA['product_img'] ?>" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title" style="font-size:14px">Main image ID: <?php echo $resultA['product_id'] ?></h5>
                            </div>
                        </div>
                    </div>
                    <?php
                    while ($resultC = $get_imgs->fetch_assoc()) {
                    ?>
                        <div class="col">
                            <div class="card text-white bg-info">
                                <img src="../../upload2/<?php echo $resultC['product_image'] ?>" class="card-img-top" alt="...">
                                <div class="card-body">
                                    <h5 class="card-title" style="font-size:14px">Side image ID: <?php echo $resultC['image_id'] ?></h5>
                                </div>
                            </div>
                        </div>
                    <?php
                    }
                    ?>
                </div>
                <br>
                <button class="btn btn-success" type="submit">Save</button>
            </form>
        </div>
    </div>

    <script>
        function check_size() {
            <?php
            while ($resultB = $get_size->fetch_assoc()) {
            ?>
                var x = "<?php echo $resultB['product_size']; ?>";
                if (x == "39") {
                    document.getElementById('product_size_39').checked = true;
                } else if (x == "40") {
                    document.getElementById('product_size_40').checked = true;
                } else if (x == "40.5") {
                    document.getElementById('product_size_40.5').checked = true;
                } else if (x == "41") {
                    document.getElementById('product_size_41').checked = true;
                } else if (x == "42") {
                    document.getElementById('product_size_42').checked = true;
                } else if (x == "42.5") {
                    document.getElementById('product_size_42.5').checked = true;
                } else if (x == "43") {
                    document.getElementById('product_size_43').checked = true;
                } else if (x == "44") {
                    document.getElementById('product_size_44').checked = true;
                } else if (x == "44.5") {
                    document.getElementById('product_size_44.5').checked = true;
                } else if (x == "45") {
                    document.getElementById('product_size_45').checked = true;
                } else if (x == "45.5") {
                    document.getElementById('product_size_45.5').checked = true;
                } else if (x == "46") {
                    document.getElementById('product_size_46').checked = true;
                } else if (x == "47") {
                    document.getElementById('product_size_47').checked = true;
                } else if (x == "47.5") {
                    document.getElementById('product_size_47.5').checked = true;
                }
            <?php
            }
            ?>
        }
    </script>

    <script type="text/javascript">
        function check_gender() {
            var x = "<?php echo $resultA['product_gender']; ?>";
            if (x == "male") {
                document.getElementById('product_gender_M').checked = true;

            } else {
                document.getElementById('product_gender_F').checked = true;
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
    <script src="../../js2/sidebar/jquery.min.js"></script>
    <script src="../../js2/sidebar/popper.js"></script>
    <script src="../../js2/sidebar/bootstrap.min.js"></script>
    <script src="../../js2/sidebar/main.js"></script>

</body>

</html>