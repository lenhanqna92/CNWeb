<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Email</title>
    <style>
        p{
            margin-left: 50px;
        }
    </style>
</head>
<body>
    <h1>Email tới bạn !</h1>
    <p>Email</p>
    <form action="mail.php" enctype="multipart/form-data" method="POST">    
    <input type="text" class="form-control" name="email" placeholder="Email">
    <p>Subject</p>
    <input type="text" class="form-control" name="tieude" placeholder="Tieu de"> <br>
    <p>Noi dung</p>
    <textarea name="content" id="editor" class="form-control"></textarea> 
    <p>File dinh kem</p>
<input type="file" class="form-control" name="file"  > <br><br>

<button type="submit" class="btn btn-primary">Gửi</button>

</body>
</html>