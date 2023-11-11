<?php 
    require "/APP/xampp/htdocs/PHPMailer-master/src/PHPMailer.php";  //nhúng thư viện vào để dùng, sửa lại đường dẫn cho đúng nếu bạn lưu vào chỗ khác
    require "/APP/xampp/htdocs/PHPMailer-master/src/SMTP.php"; //nhúng thư viện vào để dùng
    require '/APP/xampp/htdocs/PHPMailer-master/src/Exception.php'; //nhúng thư viện vào để dùng
    $mail = new PHPMailer\PHPMailer\PHPMailer(true);  //true: enables exceptions

    try{
        //$mail->SMTPDebug = 0;  // 0,1,2: chế độ debug. khi mọi cấu hình đều tớt thì chỉnh lại 0 nhé
        $mail->isSMTP();
        $mail->CharSet = "utf-8";
        $mail->Host = 'smtp.gmail.com'; //smtp servers
        $mail->SMTPAuth = true; //enable authentication
            $nguoigui = 'nhanlt.22ns@vku.udn.vn';
            $matkhau = 'vpuk hlms affx vqms'; //matkhau cua tai khoan nguoi gui, mk bao mat 2 buoc       
            $tennguoigui = 'Le Nhan';
        $mail->Username = $nguoigui; //smtp username
        $mail->Password = $matkhau; //smtp password
        $mail->SMTPSecure = 'tls'; // encryption TLS/SSL
        $mail->Port = 587; //port to connect to
        $mail->setFrom($nguoigui,$tennguoigui);
        $to = 'lenhanqna92@gmail.com';
        $to_name = 'Le Nhana';

        $mail->addAddress($to, $to_name); // mail va ten nguoi nhan
        // $mail->addAddress("nlquan@vku.udn.vn","lequan");
        /* $recipients = "test1@test.com,test2@test.com,test3@test.com,test1@test.com";
        $email_array = explode(",",$recipients);*/
         $mail->isHTML(true);  // Set email format to HTML
         $mail->Subject = 'Gui thu tu PHP';
         $noidungthu = "<b>Xin chao!</b> 
                        <br>Day la email duoc gui tu php";
         $mail->Body = $noidungthu;
         //$mail->AddAttachment("","picture");
         $mail->smtpConnect( array(
             "tls" => array(
                 "verify_peer" => false,
                 "verify_peer_name" => false,
                 "allow_self_signed" => true
             )
         ));
         $mail->send();
         echo 'Đã gửi mail xong';
         
     } catch (Exception $e) {
         echo 'Mail không gửi được. Lỗi: ', $mail->ErrorInfo;
     }

?>
