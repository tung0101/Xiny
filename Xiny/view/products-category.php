<?php
$view = $_GET['view'];
switch ($view) {
    case 'products-category':
        $products=product_category($_GET['id']);
        break;
    case 'products-search':
        $products=product_search($_POST['key']);
        break;    
    
    default:
        # code...
        break;
}
?>
<div class="breadcrumbs">
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="bread"><span><a href="?view">Trang Chủ</a></span> / <span>Sản phẩm</span></p>
            </div>
        </div>
    </div>
</div>
<style>
    /* CSS để đảm bảo hình ảnh có kích thước đều bằng nhau */
.wrapper-dt .col-dt .item img {
    width: 100%; /* Đảm bảo rằng hình ảnh chiếm toàn bộ chiều rộng của phần tử cha */
    height: 300px; /* Giữ tỉ lệ khung hình khi thay đổi kích thước */
}

/* CSS để định dạng các item trong wrapper */
.wrapper-dt .col-dt {
    margin-bottom: 20px; /* Khoảng cách giữa các item */
}

/* Optional: Định dạng text và giảm khoảng cách giữa các sản phẩm */
.wrapper-dt .col-dt .item-name {
    margin-top: 10px;
    margin-bottom: 5px;
}

.wrapper-dt .col-dt .item-price {
    margin-bottom: 10px;
}

</style>
<div class="colorlib-product">
    <div class="container">
        <div class="row wrapper-dt">
<div class="col-12">  <div class="row pad-dt">
        <?php
            while ($row=(mysqli_fetch_array($products))) { $price_sale=price_sale($row['MaSP'],$row['DonGia']);?>
            <div class="col-3 col-dt">
              <a href="?view=product-detail&id=<?php echo $row['MaSP'] ?>">
                <div class="item">
                  <div class="product-lable">
                    <?php $price_sale=price_sale($row['MaSP'],$row['DonGia']); if($price_sale < $row['DonGia']) { 
                      echo '<span>Giảm '.number_format( $row['DonGia'] - $price_sale).'đ </span>';}?>
                  </div>
                  <div><img src="webroot/image/sanpham/<?php echo $row['AnhNen']; ?>"></div>
                  <div class="item-name"><p> <?php echo $row['TenSP']; ?> </p></div>
                  <div class="item-price">
                    <p> <?php echo number_format($price_sale,0).'đ'; ?> </p>
                    <h6> <?php if(number_format($row['DonGia']) !== number_format($price_sale)) {echo number_format($row['DonGia']).'đ';} ;  ?> </h6> 
                  </div>
                </div>
              </a>
            </div> 
            <?php }?>      
        </div> </div>
        </div>
        
    </div>
</div>