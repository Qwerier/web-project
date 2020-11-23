<?php
  include "lidhjaDB.php";
  ?>

<?php
    session_start();

    if (isset($_POST["add"])){
        if (isset($_SESSION["cart"])){
            $item_array_id = array_column($_SESSION["cart"],"product_serial");
            if (!in_array($_GET["serial"],$item_array_id)){
                $count = count($_SESSION["cart"]);
                $item_array = array(
                    'product_serial' => $_GET["serial"],
                    'item_name' => $_POST["hidden_name"],
                    'product_price' => $_POST["hidden_price"],
                    'item_quantity' => $_POST["quantity"],
                );
                $_SESSION["cart"][$count] = $item_array;
                echo '<script>window.location="shporta.php"</script>';
            }else{
                echo '<script>alert("Produkti ndodhet tashme ne shporte")</script>';
                echo '<script>window.location="shporta.php"</script>';
            }
        }else{
            $item_array = array(
                'product_serial' => $_GET["serial"],
                'item_name' => $_POST["hidden_name"],
                'product_price' => $_POST["hidden_price"],
                'item_quantity' => $_POST["quantity"],
            );
            $_SESSION["cart"][0] = $item_array;
        }
    }

    if (isset($_GET["action"])){
        if ($_GET["action"] == "delete"){
            foreach ($_SESSION["cart"] as $keys => $value){
                if ($value["product_serial"] == $_GET["serial"]){
                    unset($_SESSION["cart"][$keys]);
                    echo '<script>alert("Produkti eshte hequr...!")</script>';
                    echo '<script>window.location="shporta.php"</script>';
                }
            }
        }
    }
    
    if(isset($_POST["commit"]))
    {
        $_SESSION["pagesa"] = $total+$transport;
        echo "<script> window.location.assign('pagesa.php'); </script>";
    }
    
?>

<!doctype html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Shporta e Blerjeve</title>

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="shporta.css">

    <style>
        @import url('https://fonts.googleapis.com/css?family=Titillium+Web');

        *{
            font-family: 'Titillium Web', sans-serif;
        }
    </style>
</head>
<body>

    <div class="container" style="width: 65%">
        <h2>Shporta</h2>
        <?php
            $query = "SELECT * FROM lib_pershkrim ORDER BY titulli ASC ";
            $result = mysqli_query($conn,$query);
            if(mysqli_num_rows($result) > 0) {

                while ($row = mysqli_fetch_array($result)) {

                    ?>
                    <div class="col-md-3">

                        <form method="post" action="shporta.php?action=add&serial=<?php echo $row["Nr_Seri"]; ?>">

                            <div class="product">
                                <img src="<?php echo $row["URL"]; ?>" class="img-responsive">
                                <h5 class="text-info"><?php echo $row["titulli"]; ?></h5>
                                <h5 class="text-danger"><?php echo $row["Cmimi"]; ?></h5>
                                <input type="text" name="quantity" class="form-control" value="1">
                                <input type="hidden" name="hidden_name" value="<?php echo $row["titulli"]; ?>">
                                <input type="hidden" name="hidden_price" value="<?php echo $row["Cmimi"]; ?>">
                                <input type="submit" name="add" style="margin-top: 5px;" class="btn btn-success"value="Shto ne Shporte"> 
                            </div>
                        </form>
                    </div>
                    <?php
                }
            }
        ?>

        <div style="clear: both"></div>
        <h3 class="title2">Detajet e Shportes</h3>
        <div class="table-responsive">
            <table class="table table-bordered">
            <tr>
                <th width="30%">Titulli</th>
                <th width="10%">Sasia</th>
                <th width="13%">Cmimi</th>
                <th width="10%">Totali</th>
                <th width="17%">Hiq produktin</th>
            </tr>

            <?php
                if(!empty($_SESSION["cart"])){
                    $total = 0;
                    $transport = 0;
                    foreach ($_SESSION["cart"] as $key => $value) {
                        ?>
                        <tr>
                            <td><?php echo $value["item_name"]; ?></td>
                            <td><?php echo $value["item_quantity"]; ?></td>
                            <td>$ <?php echo $value["product_price"]; ?></td>
                            <td>
                                $ <?php echo number_format($value["item_quantity"] * $value["product_price"], 2); ?></td>
                            <td><a href="shporta.php?action=delete&serial=<?php echo $value["product_serial"]; ?>"><span
                                        class="text-danger">Hiq produktin</span></a></td>

                        </tr>
                        <?php
                        $total = $total + ($value["item_quantity"] * $value["product_price"]);
                        $transport = 5 + 3*($value["item_quantity"]-1);

                        
                    }
                        ?>
                        <tr>
                            <td colspan="3" align="right">Pagesa</td>
                            <th align="right">$ <?php echo number_format($total, 2); ?></th>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan="3" align="right">Pagesa + Transporti</td>
                            <th align="right">$ <?php echo number_format($total+$transport, 2); ?></th>
                            <td></td>
                        </tr>

                        <form action="shporta.php" method="POST">
                            <input type="submit" name="commit" value="Realizon Blerjen">
                        </form>
                        <?php
                    }
                ?>
            </table>
        </div>

    </div>


</body>
</html>
    
</html>