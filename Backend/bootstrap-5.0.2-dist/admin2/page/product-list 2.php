<?php
include "header2.php";
include "sidebar2.php";
include "../class/product_class 2.php";
?>


<body>
  <div id="content" class="p-4 p-md-5 pt-5">
    <div class="admin-product-list">
      <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Name</th>
            <th scope="col">Brand</th>
            <th scope="col">Gender</th>
            <th scope="col">Price</th>
            <th scope="col">Image</th>
            <th scope="col">Option</th>
            <th scope="col">Description</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $product = new product;
          $show_product = $product->show_product();

          while ($result = $show_product->fetch_assoc()){
            $dir_path = '../../upload2/';
            $mid = $result['product_img'];
            $file_link = $dir_path . $mid;
            ?>
            <tr>
              <th scope="row"><?php echo $result['product_id']; ?></th>
              <td><?php echo $result['product_name']; ?></td>
              <td><?php echo $result['product_brand']; ?></td>
              <td><?php echo $result['product_gender']; ?></td>
              <td><?php echo number_format($result['product_price']); ?> vnđ</td>
              <td>
                <img class="product-image" src="data:image/jpeg;base64,<?php echo base64_encode(file_get_contents($file_link)); ?>" alt="Image">
                <br>
              </td>
              <td>
              <div class="btn-group" role="group" aria-label="Basic example">
                                <a role="button" class="btn btn-warning" href="product-edit 2.php?product_id=<?php echo $result['product_id'] ?>">Edit</a>
                                <a role="button" class="btn btn-danger" href="product-delete 2.php?product_id=<?php echo $result['product_id'] ?>">Delete</a>
                            </div>
              </td>
              <td>
                            <button type="button" class="btn btn-success" data-toggle="collapse" data-target="#message<?php echo $result['product_id']; ?>" class="accordion-toggle">Description</button>
              </td>
            </tr>
            <tr>
                        <td colspan="7" class="hiddenRow">
                            <div class="accordian-body collapse" id="message<?php echo $result['product_id']; ?>">
                                <div class="description">
                                    <h1 style="font-size:14px; font-weight:bold; text-align:left">Description</h1>
                                    <?php echo $result['product_description']; ?>
                                </div>
                            </div>
                        </td>
                    </tr>
          <?php } ?>
        </tbody>
      </table>
    </div>
  </div>

  <div id="large-image-overlay">
    <img id="large-image">
    <button id="close-button">&times;</button>
  </div>

  <script>
    $(document).ready(function() {
      $('.product-image').click(function() {
        var imageSrc = $(this).attr('src');
        $('#large-image').attr('src', imageSrc);
        $('#large-image-overlay').fadeIn();
      });

      $('#large-image-overlay').click(function(event) {
        if ($(event.target).is('#large-image-overlay')) {
          $(this).fadeOut();
        }
      });
    });
  </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js" integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD" crossorigin="anonymous"></script>
<script src="../../js2/sidebar/popper.js"></script>
<script src="../../js2/sidebar/bootstrap.min.js"></script>
<script src="../../js2/sidebar/main.js"></script>
</body>