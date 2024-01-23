<?php
include("../model/database.php");
@session_start();

// check login
if (isset($_SESSION['laclac_khachang'])) {
    header('location:../?view');
}

if (isset($_POST['login'])) {
    $email = $_POST['email'];
    $pass = $_POST['password'];
    $checklogin = checklogin($email, $pass);
    if ($checklogin == false) {
        echo '<script>alert("Sai tài khoản hoặc mật khẩu ! Xin mời nhập lại .")</script>';
    } else {
        $row = mysqli_fetch_array($checklogin);
        $_SESSION['laclac_khachang'] = $row;
        header('location:../?view');
    }
}
?>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="../webroot/css/login.css">
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html>

<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
        integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
</head>
<!--Coded with love by Mutiullah Samim-->
<style>
    html,
    body {
        height: 100%
    }

    body {
        background-color: #4052e4;
        display: grid;
        place-items: center
    }

    .card {
        padding: 0px 15px;

    }

    a {
        margin: 0px;
        font-size: 13px;
        text-decoration: none;
        color: black
    }

 

    .nav-link {
        padding: 1rem 1.4rem;
        margin: 0rem 0.7rem
    }

    .ac {
        font-weight: bold;
        color: #e0726c;
        font-size: 12px;
        text-decoration: none;
    }
    .ac:hover {
        font-weight: bold;
        color: #e0726c;
        font-size: 12px;
        text-decoration: none;
    }

    input,
    button {
        width: 100%;
        background-color: #fff2f1;
        border-radius: 8px;
        padding: 8px 17px;
        font-size: 13px;
        border: 1px solid #f5f0ef;
        color: #dccece
    }

    input: {
        text-decoration: none
    }

    .bt {
        background-color: #ff4133;
        border: 1px solid rgb(300, 200, 200)
    }

    form {
        margin-top: 70px
    }

    form>* {
        margin: 10px 0px
    }

    #forgot {
        margin: 0px -60px
    }

    #register {
        text-align: center
    }

    .brand_logo{
    }

    .wlcm {
        font-size: 30px
    }

    .sp1 {
        font-size: 5px
    }

    .sp1>span {
        background-color: #f0c3be
    }
</style>

<body>
    <div class="container h-100">
        <!-- <div class="d-flex justify-content-center">
            <div class="brand_logo_container">
                <img src="../webroot/image/logo/logo.jpg" class="brand_logo" alt="Logo">
            </div>
        </div>
        <div class="d-flex justify-content-center h-100">
            <div class="user_card">

                <div class="d-flex justify-content-center form_container">
                    <form method="post" action="login.php">
                        <div class="input-group mb-3">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-user"></i></span>
                            </div>
                            <input type="text" name="email" class="form-control input_user" value="" required
                                placeholder="email">
                        </div>
                        <div class="input-group mb-2">
                            <div class="input-group-append">
                                <span class="input-group-text"><i class="fas fa-key"></i></span>
                            </div>
                            <input type="password" name="password" class="form-control input_pass" value="" required
                                placeholder="password">
                        </div>

                        <div class="d-flex justify-content-center mt-3 login_container">
                            <button type="submit" name="login" class="btn login_btn">Đăng nhập</button>
                        </div>
                    </form>
                </div>

                <div class="mt-4">
                    <div class="d-flex justify-content-center links">
                        Không có tài khoản <a href="../?view=sign-up" class="text-decoration-none ml-2 ">Đăng ký</a>
                    </div>
                    <div class="d-flex justify-content-center links">
                        <a href="#" class="text-decoration-none"></a>Quên mật khẩu?</a>
                    </div>
                </div>
            </div>
        </div> -->
        <div class="container-fluid">
            <div class="row justify-content-center">
                <div class="col-12 col-sm-10 col-md-12 col-lg-11 col-xl-10">
                    <div class=" d-flex mx-auto my-5">
                        <div class="row">
                            <div class="col-md-5 col-sm-12 col-xs-12 ">
                                <img src="https://bizweb.dktcdn.net/100/422/076/articles/o1cn014b5rkj1jkgskf7bqd-2201198031066-1.jpeg?v=1636345292023"
                                    width="100%" height="100%" class="mx-auto d-flex " alt="Teacher">
                            </div>
                            <div class="col-md-7 col-sm-12 col-xs-12  pt-5">
                                <div class="img pl-5">  <img src="../webroot/image/logo/logo.jpg" class="brand_logo mx-5" alt="Logo"
                                    style="height: 80px; width: 300px; "></div>
                              
                                <form method="post" action="login.php" class="px-5 pb-5">
                                    <div class="d-flex text-center">
                                        <h3 class="font-weight-bold text-center">Đăng nhập</h3>
                                    </div> <input type="text" name="email"  value="" required
                                placeholder="email"> <input type="password"
                                        name="password" value="" required
                                placeholder="password"> <span class="ac" id="forgot">Quên?</span>
                                    <button class="text-white text-weight-bold bt" type="submit" name="login" >Đăng nhập</button>

                                    <div class="d-flex justify-content-center">
                                        <a href="../?view=sign-up" class="ac">Đăng ký</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</body>

</html>
<?php
// include("../model/database.php");
// @session_start();
// if (isset($_SESSION['laclac_khachang'])) {
//     header('location:../?view');
// }
// if (isset($_POST['login'])) {
//     $email = $_POST['email'];
//     $pass = $_POST['password'];
//     $checklogin = checklogin($email, $pass);
//     if ($checklogin == false) {
//         echo '<script>alert("Sai tài khoản hoặc mật khẩu ! Xin mời nhập lại .")</script>';
//     } else {
//         $row = mysqli_fetch_array($checklogin);
//         $_SESSION['laclac_khachang'] = $row;
//         header('location:../?view');
//     }
// }
?>