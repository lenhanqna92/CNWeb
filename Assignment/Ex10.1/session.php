<?php
    session_start();
    if(!isset($_SESSION['name'])){
        $_SESSION['name'] = "Nguyen Van a";
        $_SESSION['age'] = "25";
        $_SESSION['msv'] = "22IT234";
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Session</title>
</head>
<body>
    <?php
        echo "Tên của bạn là: " . $_SESSION['name'] ."</br>";
        echo "Tuổi: " . $_SESSION['age'] ."</br>";
        echo "Mã Sinh Viên: " . $_SESSION['msv'] ."</br>";
    ?>
    <a href="test_session.php">Click Here!</a>
</body>
</html>