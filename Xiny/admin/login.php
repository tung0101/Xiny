<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Admin</title>

    <link rel="shortcut icon" href="assets/images/favicon.png" />
    <script src="/onishoes/webroot/jquery/jquery.js"></script>
    <link rel="stylesheet" href="template/css/sb-admin-2.min.css">
    <link href="/onishoes/webroot/font/Font Awesome/css/all.min.css" rel="stylesheet" type="text/css">


</head>

<body class="" style="margin: 100px 0;">
    <div class="container d-flex align-items-center justify-content-center ">
        <div class="row ">
            <div class=" col-xl-12 col-lg-12 col-md-12">
                <div class="row ">
                    <div class="col-lg-6  ">
                        <img src="https://accounts.haravan.com/img/login_banner.svg" width="500" alt="">
                    </div>
                    <div class="col-lg-6">
                        <div class="p-5">
                            <div class="text-center">
                                <br><br>
                                <h1 class="h4 text-gray-900 mb-4">Admin - Đăng nhập</h1>
                                <h3 class="h4 text-gray-900 mb-4">Shop Xiny</h3>
                                <p>Xin chào, vui lòng nhập thông tin đăng nhập</p>
                            </div>
                            <form class="user" action="" method="post">
                                <div class="form-group">
                                    <input type="text" class="form-control" id="exampleInputEmail"
                                        aria-describedby="emailHelp" name="email" placeholder="Email" required
                                        autofocus>
                                </div>
                                <div class="form-group">
                                    <input type="password" class="form-control" id="exampleInputPassword"
                                        placeholder="Password" name="pass">
                                </div>

                                <button type="submit" name="login" class="btn  btn-primary  btn-block"> Đăng nhập
                                </button>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <?php
  include_once('../model/database.php');
  @session_start();
  // check đăng nhập
  if (isset($_SESSION['admin'])) {
    header('location:index.php');
  }
  if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $matkhau = $_POST['pass'];
    $sql_dangnhap = "select * from NhanVien where Email='$email' or MaNV ='$email' and MatKhau='$matkhau'";
    $run_dangnhap = mysqli_query($conn, $sql_dangnhap);
    $dangnhap = mysqli_fetch_array($run_dangnhap);
    $count_dangnhap = mysqli_num_rows($run_dangnhap);
    if ($count_dangnhap == 0) {
      echo '<script>alert("Sai tài khoản hoặc mật khẩu ! Xin mời nhập lại .")</script>';
    } else {
      $_SESSION['admin'] = $dangnhap;

      header('location:index.php');
    }
  }
  ?>
</body>

</html>