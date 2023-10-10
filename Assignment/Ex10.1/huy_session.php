<?php
session_start();
//unset($_SESSION['name']);// huy session co ten la 'name'
session_destroy();
//destroy_all();
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>
<?php
    echo "Chào bạn ".$_SESSION['name']." Có tuoi la:".$_SESSION['age'] ."Ma sinh vien là: " .$_SESSION['msv'];
?>
</body>
</html>