<?php
    $server = $_SERVER['SERVER_NAME'].":3307";
    $user = "root";
    $pass = "";
    $db = "udn";
    $con=mysqli_connect($server,$user,$pass,$db);
    mysqli_query($con,"set names 'utf8'");
?>