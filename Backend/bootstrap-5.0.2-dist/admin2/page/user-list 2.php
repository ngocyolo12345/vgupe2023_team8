<?php
include "header2.php";
include "sidebar2.php";
include "../class/user_class 2.php"
?>

<?php
$user = new user;
$show_user = $user->show_user();
?>
<body>
<div id="content" class="p-4 p-md-5 pt-5">
    <div class="admin-product-list">

        <table class="table table-hover table-sm table table-striped">
            <thead>
                <tr class="table-primary">
                    <th scope="col">#</th>
                    <th scope="col">First Name</th>
                    <th scope="col">Last Name</th>
                    <th scope="col">Username</th>
                </tr>
            </thead>
            <tbody>
                <!-- An example of a row -->
                <?php
                while ($result = $show_user ->fetch_assoc()) {
                ?>
                    <tr class="table-info">>
                        <th scope="row"><?php echo $result['userID']; ?></th>
                        <th><?php echo $result['firstname']; ?></th>
                        <td><?php echo $result['lastname']; ?></td>
                        <td><?php echo $result['username']; ?></td>
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