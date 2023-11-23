<?php
include "header2.php";
include "sidebar2.php";
include "../class/product_class 2.php"
?>
<?php
$product = new product;
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $insert_product = $product->insert_product($_POST, $_FILES);
    // var_dump($_POST, $_FILES);
}
?>

<body>
    <div id="content" class="p-4 p-md-5 pt-5">
        <div class="admin-product-add">
            <h1>Add product</h1>
            <form action="" method="POST" enctype="multipart/form-data">
                <label for="" style="color:black;">Name</label>
                <input required class="form-control" type="text" placeholder="Name" name="product_name">
                <label for="" style="color:black;">Brand</label>
                <input required class="form-control" type="text" placeholder="Brand" name="product_brand">
                <label for="" style="color:black;">Gender</label>
                <div class="form-check">
                    <input required class="form-check-input" type="radio" name="product_gender" id="flexRadioDefault1" value="male">
                    <label class="form-check-label" for="flexRadioDefault1" style="color:blue;">
                        Male
                    </label>
                </div>
                <div class="form-check">
                    <input required class="form-check-input" type="radio" name="product_gender" id="flexRadioDefault2" value="female">
                    <label class="form-check-label" for="flexRadioDefault2" style="color:#FF33C1;">
                        Female
                    </label>
                </div>
                <label for="" style="color:black;">Size</label>
                <div class="form-check">
                <label class="radio"><input type="checkbox" name="product_size[]" value="39" checked> <span>39</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="40"> <span>40</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="40.5"> <span>40.5</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="41"> <span>41</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="42"> <span>42</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="42.5"> <span>42.5</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="43"> <span>43</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="44"> <span>44</span> </label><br>
                <label class="radio"><input type="checkbox" name="product_size[]" value="44.5"> <span>44.5</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="45"> <span>45</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="45.5"> <span>45.5</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="46"> <span>46</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="47"> <span>47</span> </label>
                <label class="radio"><input type="checkbox" name="product_size[]" value="47.5"> <span>47.5</span> </label>
                </div>
                <label for="" style="color:black;">Price</label>
                <input required class="form-control" type="number" step="any" name="product_price">
                <!-- <label for="" style="color:black;">Amount</label>
                <input required class="form-control" type="text" placeholder="Amount" name="product_quantity"> -->
                <label for="" style="color:black;">Main Image</label>
                <input required class="form-control" type="file" name="product_img">
                <label for="" style="color:black;">Side Image (Maximum 4 pictures)</label>
                <input required multiple class="form-control" type="file" name="product_imgs[]">
                <div class="form-group">
                    <label for="exampleFormControlTextarea1" style="color:green;">Description</label>
                    <textarea class="form-control" id="exampleFormControlTextarea1" rows="10" name="product_description"></textarea>
                </div>
                <br>
                <button class="btn btn-success" type="submit">Add</button>
            </form>
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