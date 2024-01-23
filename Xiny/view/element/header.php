<!DOCTYPE html>
<html>

<head>
    <title>XINY Phụ nữ phải đẹp</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap" rel="stylesheet" />
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <!-- MDB -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/6.3.1/mdb.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Animate.css -->
    <link rel="stylesheet" href="webroot/css/template/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="webroot/css/template/icomoon.css">
    <!-- Ion Icon Fonts-->
    <link rel="stylesheet" href="webroot/css/template/ionicons.min.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="webroot/css/templats/bootstrap.min.css">

    <!-- Magnific Popup -->
    <link rel="stylesheet" href="webroot/css/template/magnific-popup.css">

    <!-- Flexslider  -->
    <link rel="stylesheet" href="webroot/css/template/flexslider.css">

    <!-- Owl Carousel -->
    <link rel="stylesheet" href="webroot/css/template/owl.carousel.min.css">
    <link rel="stylesheet" href="webroot/css/template/owl.theme.default.min.css">

    <!-- Date Picker -->
    <link rel="stylesheet" href="webroot/css/template/bootstrap-datepicker.css">
    <!-- Flaticons  -->
    <link rel="stylesheet" href="webroot/css/template/fonts/flaticon/font/flaticon.css">

    <!-- Theme style  -->
    <link rel="stylesheet" href="webroot/css/template/style.css">
    <!--  style of you -->
    <link rel="stylesheet" href="webroot/css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/leaflet@1.7.1/dist/leaflet.css" />
    <script src="https://cdn.jsdelivr.net/npm/leaflet@1.7.1/dist/leaflet.js"></script>
</head>

<body>
    <div id="page">

        <nav class="colorlib-nav" role="navigation">
            <!-- <div class="sale bg-black">
                <div class="container">
                    <div class="row">
                        <div class="col-5 d-flex align-items-center">
                            <i class="text-white fa-sharp fa-solid fa-house-chimney mr-2"></i>
                            <p class="text-white mb-0">Địa chỉ: 45 Trần Văn Ơn, Hòa Phú, Thủ Dầu Một, Bình Dương</p>
                        </div>
                        <div class="col-4 d-flex align-items-center">
                            <i class="text-white fa-solid fa-envelope mr-2"></i>
                            <p class="text-white mb-0">Email: hueshynbigsize@gmail.com</p>
                        </div>
                        <div class="col-3 d-flex align-items-center">
                            <i class="text-white fa-solid fa-phone mr-2"></i>
                            <p class="text-white mb-0">Hotline: 096 965 67 87</p>
                        </div>
                    </div>
                </div>
            </div> -->
            <!-- <div class="sale bg-danger bg-gradient">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8 offset-sm-2 text-center">
                                <div class="row">
                                    <div class="owl-carousel2">
                                        <div class="item">
                                            <div class="col">
                                                <h3><a href="#">Giảm giá 25% (12/12 - 22/12) cho tất cả các sản phẩm</a>
                                                </h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col">
                                                <h3><a href="#">Giảm 15% khi đặt hàng trong khung giờ vàng
                                                    </a></h3>
                                            </div>
                                        </div>
                                        <div class="item">
                                            <div class="col">
                                                <h3><a href="#">Giảm 20% khi đến mua tại cửa hàng trong tháng 12
                                                    </a></h3>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            <div class="top-menu">
                <div class="container">
                    <div class="row">
                        <div class="col-sm-12 menu-1">
                            <ul>
                                <li> <a href="?view">
                                        <img class="logo-header" src="webroot/image/logo/logo.jpg" alt=""
                                            style="height: 40px; width: 120px;     margin-top: -20px;  ">
                                    </a></li>
                                <li><a href="?view">Trang Chủ</a></li>
                                <li><a href="?view=about">Giới thiệu</a></li>
                                <?php
                                $category = categorys();
                                while ($row = (mysqli_fetch_array($category))) {
                                    echo '	<li><a href="?view=products-category&id=' . $row['MaNCC'] . '">' . $row['TenNCC'] . '</a></li>';
                                } ?>
                                <li><a href="?view=contact">Liên Hệ</a></li>
                                <?php $dem = 0;
                                if (isset($_SESSION['cart_product'])) {
                                    foreach ($_SESSION['cart_product'] as $item_cart) {
                                        $dem = $dem + $item_cart['SoLuong'];
                                    }
                                } ?>
                                <li class=""><a href="?view=user"><i class=" fas fa-magnifying-glass"></i></a></li>
                                <li class="ml-2"><a href="?view=user"><i class=" fas fa-user "></i></a></li>
                                <li class="mr-2"><a href="?view=cart"><i class="fas fa-basket-shopping"></i>
                                        [
                                        <?php echo $dem; ?>]
                                    </a></li>
                            </ul>
                        </div>
                    </div>
                </div>


        </nav>