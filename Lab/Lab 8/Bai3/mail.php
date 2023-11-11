<?php 
    require "/APP/xampp/htdocs/PHPMailer-master/src/PHPMailer.php";  //nhúng thư viện vào để dùng, sửa lại đường dẫn cho đúng nếu bạn lưu vào chỗ khác
    require "/APP/xampp/htdocs/PHPMailer-master/src/SMTP.php"; //nhúng thư viện vào để dùng
    require '/APP/xampp/htdocs/PHPMailer-master/src/Exception.php'; //nhúng thư viện vào để dùng
if (isset($_POST)) {
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

        $to = $_POST['email'];
        $to_name = "bạn";
            $tieude = $_POST['tieude'];

            $recipients = "lenhanqna92@gmail.com,
                           nhanqna922@gmail.com,
                           lethanhnhan12a3@gmail.com,
                           test4@test.com";
            $email_array = explode(",",$recipients);
            foreach($email_array as $email)
            {
               $to = $email;
               $mail->addAddress($to, $to_name); 
            }
        
         // mail va ten nguoi nhan
        // $mail->addAddress("nlquan@vku.udn.vn","lequan");
        /* $recipients = "test1@test.com,test2@test.com,test3@test.com,test1@test.com";
        $email_array = explode(",",$recipients);*/
         $mail->isHTML(true);  // Set email format to HTML

         $mail->Subject = $tieude;
         $noidungthu = '<div class= "card" style= "width:18rem;">
                        <div class= "card-body">
                        <h5 class= "card-title"><b>Xin chào' .$to_name.'</b></h5>
                        <h6 class="card-subtitle mb-2 text-muted"></h6>
                        <p class="card-text">' . $_POST['content'] . '</p>
                    </div>
                    </div> ';
    
         $mail->Body = $noidungthu;
                if(isset($_FILES['file']['name'])){
                    $uploadfile = tempnam(sys_get_temp_dir(),sha1($_FILES['file']['name']));
                if(move_uploaded_file($_FILES['file']['tmp_name'],$uploadfile))
                $mail->addAttachment($uploadfile, $_FILES['file']['name']);
                }  
                /* Hàm tempnam() sẽ tạo file với tên file là duy nhất trong nằm thư mục truyền vào. Nếu thư mục không tồn tại, hàm tempnam() có thể tạo tệp tin vào thư mục tạm của hệ thống.  
                tempnam( $dir, $prefix); $dir là thư mục sẽ chứa file.$prefix là tên file, hàm sẽ chỉ dụng 3 kí tự đầu tiên của $prefix để làm tiền tố của tên file được tạo.
 */
  

         //$mail->AddAttachment("","picture");
         $mail->smtpConnect( array(
             "tls" => array(
                 "verify_peer" => false,
                 "verify_peer_name" => false,
                 "allow_self_signed" => true
             )
         ));
         if($mail->send())
            {
                header("Location;index.php");
            }

        } catch (Exception $e) {
         echo 'Mail không gửi được. Lỗi: ', $mail->ErrorInfo;
     }
    }
?>
