<?php
    $ten = $_POST['product_description'];
    $gia = $_POST['list_price'];
    $phantramgiam = $_POST['discount_percent'];
    
    $ten = filter_input(INPUT_POST,'product_description');
    $gia = filter_input(INPUT_POST,'list_price');
    $phantramgiam = filter_input(INPUT_POST,'discount_percent');

    $sotiengiam = $gia * $phantramgiam * .01;
    $giacuoi = $gia - $sotiengiam;

    $dvgia = number_format($gia, 2)." $";
    $dvphantramgiam = $phantramgiam." %";
    $dvsotiengiam = number_format($sotiengiam, 2)." $";
    $dvgiacuoi = number_format($giacuoi, 2)." $";
?>

<!DOCTYPE html>
<html>
<head>
    <title>Product Discount Calculator</title>
    <link rel="stylesheet" type="text/css" href="main.css">
</head>
<body>
    <main>
        <h1>Product Discount Calculator</h1>

        <label>Product Description:</label>
        <span><?php echo htmlspecialchars($ten); ?></span><br>

        <label>List Price:</label>
        <span><?php echo htmlspecialchars($dvgia); ?></span><br>

        <label>Standard Discount:</label>
        <span><?php echo htmlspecialchars($dvphantramgiam); ?></span><br>

        <label>Discount Amount:</label>
        <span><?php echo $dvsotiengiam; ?></span><br>

        <label>Discount Price:</label>
        <span><?php echo $dvgiacuoi; ?></span><br>
    </main>
</body>
</html>