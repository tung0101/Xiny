<aside id="colorlib-hero" style="margin-bottom: 40px;">
    <!-- <div class="flexslider">
        <ul class="slides">
            <li style="background-image: url('webroot/image/slider/banner1.jpg');">
                <div class="overlay"></div>

            </li>
            <li style="background-image: url(webroot/image/slider/banner2.jpg);">
                <div class="overlay"></div>

            </li>
            <li style="background-image: url(webroot/image/slider/banner3.jpg);">
                <div class="overlay"></div>

            </li>
        </ul>
    </div> -->
    <div class="flexslider">
        <img src="webroot/image/slider/banner.jpg" alt="" width="100%" height="100%">
    </div>
</aside>
<section class="section awe-section-2 mt-5">
    <div class="ega-policies">
        <div style="margin: 0 100px;">
            <div class="policies-body row">

                <div class="policies-item col-3 row">
                    <div class="policies-image col-3">
                        <img src="//bizweb.dktcdn.net/100/422/076/themes/901586/assets/policies_icon_1.png?1704954187313"
                            alt="policies_icon_1.png" width="40" height="40" class="img-fluid">
                    </div>
                    <div class="policies-info col-9">
                        <h6 class="policies-title">Ship COD toàn quốc</h6>
                        <p class="policies-desc">Nhận hàng từ 3-5 ngày</p>
                    </div>
                </div>

                <div class="policies-item col-3 row">
                    <div class="policies-image col-3">
                        <img src="//bizweb.dktcdn.net/100/422/076/themes/901586/assets/policies_icon_2.png?1704954187313"
                            alt="policies_icon_2.png" width="40" height="40" class="img-fluid">
                    </div>
                    <div class="policies-info col-9">
                        <h6 class="policies-title">Ngập tràn khuyến mãi</h6>
                        <p class="policies-desc">Nhiều ưu đãi khuyến mãi hot</p>
                    </div>
                </div>

                <div class="policies-item col-3 row">
                    <div class="policies-image col-3">
                        <img src="//bizweb.dktcdn.net/100/422/076/themes/901586/assets/policies_icon_3.png?1704954187313"
                            alt="policies_icon_3.png" width="40" height="40" class="img-fluid">
                    </div>
                    <div class="policies-info col-9">
                        <h6 class="policies-title">Bảo đảm chất lượng</h6>
                        <p class="policies-desc">Kiểm hàng - Bao đổi trả</p>
                    </div>
                </div>

                <div class="policies-item col-3 row">
                    <div class="policies-image col-3">
                        <img src="//bizweb.dktcdn.net/100/422/076/themes/901586/assets/policies_icon_4.png?1704954187313"
                            alt="policies_icon_4.png" width="40" height="40" class="img-fluid">
                    </div>
                    <div class="policies-info col-9">
                        <h6 class="policies-title">Hotline: <a href="tel:0764080098">0764080098</a></h6>
                        <p class="policies-desc">Hỗ trợ bạn 24/7</p>
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>
<style>
 .item .items img {
    width: 100%; 
    height: 350px; 
}
</style>
<div class="colorlib-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>Đầm mới về</h2>
            </div>
        </div>
        <?php
        $product = featuredProductsL4();
        ?>
        <div class="container ">
            <div class="row wrapper-dt">
                <div class="col-12">
                    <div class="row pad-dt">
                        <div class="row pad-dt">
                            <?php while ($row = mysqli_fetch_array($product)) { ?>
                                <div class="col-3 col-dt">
                                    <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
                                        <div class="item">
                                            <div class="product-lable">
                                                <?php $price_sale = price_sale($row['MaSP'], $row['DonGia']);
                                                if ($price_sale < $row['DonGia']) {
                                                    echo '<span>Giảm ' . number_format($row['DonGia'] - $price_sale) . 'đ </span>';
                                                } ?>
                                            </div>
                                            <div class="items"><img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>"></div>
                                            <div class="item-name">
                                                <p>
                                                    <?php echo $row['TenSP']; ?>
                                                </p>
                                            </div>
                                            <div class="item-price">
                                                <p>
                                                    <?php echo number_format($price_sale, 0) . 'đ'; ?>
                                                </p>
                                                <h6>
                                                    <?php if (number_format($row['DonGia']) !== number_format($price_sale)) {
                                                        echo number_format($row['DonGia']) . 'đ';
                                                    }
                                                    ; ?>
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            <?php } ?>
                            <div id="data_sp"></div>
                        </div>
                    </div>
                </div>
                <div id="loading" style="display:none">
                    <img src="webroot/image/loader.gif" alt="Loading..." />
                </div>
            </div>
        </div>

    </div>
</div>

<div class="colorlib-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>Đầm váy</h2>
            </div>
        </div>
        <?php
        $product =  newsProductsL4();
        ?>


        <div class="container ">
            <div class="row wrapper-dt">
                <div class="col-12">
                    <div class="row pad-dt">
                        <div class="row pad-dt">
                            <?php while ($row = mysqli_fetch_array($product)) { ?>
                                <div class="col-3 col-dt">
                                    <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
                                        <div class="item">
                                            <div class="product-lable">
                                                <?php $price_sale = price_sale($row['MaSP'], $row['DonGia']);
                                                if ($price_sale < $row['DonGia']) {
                                                    echo '<span>Giảm ' . number_format($row['DonGia'] - $price_sale) . 'đ </span>';
                                                } ?>
                                            </div>
                                            <div class="items"><img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>"></div>
                                            <div class="item-name">
                                                <p>
                                                    <?php echo $row['TenSP']; ?>
                                                </p>
                                            </div>
                                            <div class="item-price">
                                                <p>
                                                    <?php echo number_format($price_sale, 0) . 'đ'; ?>
                                                </p>
                                                <h6>
                                                    <?php if (number_format($row['DonGia']) !== number_format($price_sale)) {
                                                        echo number_format($row['DonGia']) . 'đ';
                                                    }
                                                    ; ?>
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            <?php } ?>
                            <div id="data_sp"></div>
                        </div>
                    </div>
                </div>
                <div id="loading" style="display:none">
                    <img src="webroot/image/loader.gif" alt="Loading..." />
                </div>
            </div>
        </div>

    </div>
</div>


<div class="colorlib-product">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>Mẫu mới sắp về</h2>
            </div>
        </div>
        <?php
        $product = sellingProductsL4();
        ?>


        <div class="container ">
            <div class="row wrapper-dt">
                <div class="col-12">
                    <div class="row pad-dt">
                        <div class="row pad-dt">
                            <?php while ($row = mysqli_fetch_array($product)) { ?>
                                <div class="col-3 col-dt">
                                    <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
                                        <div class="item">
                                            <div class="product-lable">
                                                <?php $price_sale = price_sale($row['MaSP'], $row['DonGia']);
                                                if ($price_sale < $row['DonGia']) {
                                                    echo '<span>Giảm ' . number_format($row['DonGia'] - $price_sale) . 'đ </span>';
                                                } ?>
                                            </div>
                                            <div class="items"><img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>"></div>
                                            <div class="item-name">
                                                <p>
                                                    <?php echo $row['TenSP']; ?>
                                                </p>
                                            </div>
                                            <div class="item-price">
                                                <p>
                                                    <?php echo number_format($price_sale, 0) . 'đ'; ?>
                                                </p>
                                                <h6>
                                                    <?php if (number_format($row['DonGia']) !== number_format($price_sale)) {
                                                        echo number_format($row['DonGia']) . 'đ';
                                                    }
                                                    ; ?>
                                                </h6>
                                            </div>
                                        </div>
                                    </a>
                                </div>
                            <?php } ?>
                            <div id="data_sp"></div>
                        </div>
                    </div>
                </div>
                <div id="loading" style="display:none">
                    <img src="webroot/image/loader.gif" alt="Loading..." />
                </div>
            </div>
        </div>

    </div>
</div>
<div class="colorlib-about">
    <div class="container">
        <div class="row row-pb-lg">
            <div class="col-sm-6 mb-3">
                <div class=" colorlib-video"
                    style="background-image: url('https://bizweb.dktcdn.net/100/422/076/files/151580878-182415096635955-9166300948372707732-n.jpg?v=1624610380174');">

                </div>
            </div>
            <div class="col-sm-6">
                <div class="about-wrap">

                    <p>"Xiny Chuyên mặt hàng thời trang nữ U30+ từ các nhãn hàng thời trang Quốc Tế như Vero Moda, Only,
                        Lagogo mẫu mã cực kỳ đa dạng.</p>
                    <p>Sau 1 năm hoạt động, fanpage của Xiny đã có hơn 40.000 lượt theo dõi từ khách hàng yêu quý, tỉ lệ
                        quay lại của khách hàng quay lại đạt mức kỷ lục tới ~ 60%.
                        Tuy phục vụ cho đối tượng khách hàng ngoài 30, thường vóc dáng và phong cách ăn mặc rất khắt khe
                        nhưng luôn được sự ủng hộ của các chị đẹp nhờ chất lượng sản phẩm, dịch vụ tốt và triết lý lấy
                        khách hàng làm trung tâm.</p>
                    <p>Xiny tổ chức livestream Sale Hàng Hiệu Lẻ Size vào 12h30 và 20h từ Thứ 3 tới Chủ Nhật hàng tuần
                        tại fanpage: https://facebook.com/xiny.vn
                        Like và follow Xiny ở chế độ Ưu tiên (See First) để không bỏ lỡ các livestream sản phẩm lẻ size
                        cực kỳ Hot các chị nhé!</p>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- <div class="colorlib-partner">
    <div class="container">
        <div class="row">
            <div class="col-sm-8 offset-sm-2 text-center colorlib-heading colorlib-heading-sm">
                <h2>ĐỐI TÁC TIN CẬY</h2>
            </div>
        </div>

        <div class="row">
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-1.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-2.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-3.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-4.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-5.jpg" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
            <div class="col partner-col text-center">
                <img src="webroot/image/brand/brand-6.png" class="img-fluid" alt="Free html4 bootstrap 4 template">
            </div>
        </div>
    </div>
</div> -->