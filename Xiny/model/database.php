<?php
// kết nối database 
    $servername = "localhost";
    $database = "xiny_sql";
    $username = "root";
    $password = "";

    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database);
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
   
// -------------------------
function selectdata($sql)
{
    global $conn;
    $retval = mysqli_query(  $conn ,$sql);  
    return $retval;
    mysqli_close($conn);
}
// login 
function checklogin($email,$password){
    global $conn;
    $sql="SELECT * FROM `khachhang` WHERE Email= '$email' AND MatKhau = '$password'";
    $resulf=mysqli_query($conn,$sql);
    $count=mysqli_num_rows($resulf); 
    if($count==0){
        return false;
      }else{
        return $resulf;
      }     
    mysqli_close($conn);
}
// -------------------------
// ------------------------------------------ PRODUCT MODEL----------------------
// lấy danh sách sản phẩm
function productAll(){
  global $conn;
  $sql=" SELECT * FROM `sanpham`  limit 12" ;
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// lấy danh sách sản phẩn nổi bật 
function featuredProductsL4(){
  global $conn;
  $sql = "SELECT * FROM `sanpham` WHERE `MaNCC` = 1 LIMIT 4";
  $result = mysqli_query($conn, $sql);
  $count = mysqli_num_rows($result);
  if ($count == 0) {
      return false;
  } else {
      return $result;
  }
  mysqli_close($conn);
}
function newsProductsL4(){
  global $conn;
  $sql = "SELECT * FROM `sanpham` WHERE `MaNCC` = 2 LIMIT 4 ";
  $result = mysqli_query($conn, $sql);
  $count = mysqli_num_rows($result);
  if ($count == 0) {
      return false;
  } else {
      return $result;
  }
  mysqli_close($conn);
}
function sellingProductsL4(){
  global $conn;
  $sql = "SELECT * FROM `sanpham` WHERE `MaNCC` = 3 LIMIT 4";
  $result = mysqli_query($conn, $sql);
  $count = mysqli_num_rows($result);
  if ($count == 0) {
      return false;
  } else {
      return $result;
  }
  mysqli_close($conn);
}

// lấy danh sách sản phẩm random
function product_rand(){
  global $conn;
  $sql=" SELECT * FROM `sanpham` ORDER BY rand() limit 4" ;
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// tìm kiếm sản phẩm 
function product_search($key){
  global $conn;
  $sql="SELECT * FROM `sanpham` WHERE `TenSP`  LIKE N'%".$key."%' ";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// lấy 1 product 
function product($id){
  global $conn;
  $sql="SELECT * FROM sanpham WHERE `MaSP` = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// tính sản phẩm khuyến mãi
function price_sale($id,$gia){
  global $conn;
  $a=0; $b=0;$tong=0;
  date_default_timezone_set('Asia/Ho_Chi_Minh');$date=getdate();
	$ngay=$date['year']."-".$date['mon']."-".($date['mday']);
 
  $km="SELECT * FROM `sanphamkhuyenmai` WHERE `MaSP`=".$id;
  $query_km=mysqli_query($conn,$km);
  while ($kq_km=mysqli_fetch_array($query_km)) {
    $km1="SELECT * FROM `khuyenmai` WHERE `MaKM`=".$kq_km['MaKM']." and NgayBD <='".$ngay."' and NgayKT >='".$ngay."'";
      $query_km1=mysqli_query($conn,$km1);
      while ($kq_km=mysqli_fetch_array($query_km1)) { 
           if(isset($kq_km['KM_PT'])){ $b=$b+($kq_km['KM_PT']);} 
           if(isset($kq_km['TienKM'])){ $a=$a+($kq_km['TienKM']);} 				            	
      }	
  }
  if ($a!==0 && $b!==0) {
    return  $tong = $gia - $a - ($gia*$b/100);
  }elseif($b==0){
    return $tong=$gia-$a;
  }elseif($a==0){
    return $tong=$gia-($gia*$b/100);
  }else{
    return $gia;
  }
  mysqli_close($conn);
}
// lấy  product detail
function product_detail_color($id){
  global $conn;
  $sql="SELECT  DISTINCT MaMau FROM `chitietsanpham` WHERE  `MaSP` = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
function product_detail_size($id){
  global $conn;
  $sql="SELECT  DISTINCT MaSize FROM `chitietsanpham` WHERE  `MaSP` = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
function product_detail_image($id){
  global $conn;
  $sql="SELECT  * FROM `anhsp` WHERE  `MaSP` = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}
// check số lượgn prodcut
function check_product_soluong($id, $size, $mau){
  global $conn;

  // Sử dụng câu truy vấn tham số hóa để tránh SQL injection
  $sql = "SELECT SoLuong FROM chitietsanpham WHERE MaSP = ? AND MaMau = ? AND MaSize = ?";
  
  // Sử dụng Prepared Statements để an toàn hơn
  $stmt = mysqli_prepare($conn, $sql);
  
  // Kiểm tra lỗi Prepared Statements
  if (!$stmt) {
      die('Query failed: ' . mysqli_error($conn));
  }

  // Bắt đầu bind tham số
  mysqli_stmt_bind_param($stmt, 'iss', $id, $mau, $size);

  // Thực hiện truy vấn
  mysqli_stmt_execute($stmt);

  // Lấy kết quả
  mysqli_stmt_bind_result($stmt, $soluongkho);

  // Fetch kết quả
  mysqli_stmt_fetch($stmt);

  // Đóng statement
  mysqli_stmt_close($stmt);

  // Kiểm tra và trả về kết quả
  if ($soluongkho === null) {
      return 0; // Trường hợp không tìm thấy dữ liệu
  } else {
      return $soluongkho;
  }

  // Lưu ý: Đừng đặt mã đóng kết nối mysqli_close($conn) ở đây vì nó sẽ không được thực hiện.
  // Kết nối sẽ được đóng sau khi script kết thúc.
}

// check phiếu giảm giá
if (isset($_POST["functionName"])) {
  if ($_POST["functionName"] == "check_coupon") {
    $id = $_POST["id"];
    $result = check_coupon($id);
    echo json_encode($result);
  }
}
function check_coupon($id){
  global $conn;
  $sql="SELECT * FROM `phieugiamgia` WHERE `id` = '$id'";
  $resulf = mysqli_query($conn ,$sql);  
  $count=mysqli_num_rows($resulf);        
  if($count==0){
    return $coupon=0;
  }else{
    $coupon=mysqli_fetch_array($resulf);
    return number_format( $coupon['SoTien']);
  }     
mysqli_close($conn);
}
// các bình luận product
function product_review($id){
  global $conn;
  $sql="SELECT * FROM `binhluan` WHERE `MaSP`=$id ORDER BY ThoiGian DESC ";
  $resulf = mysqli_query($conn ,$sql);       
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);

}
// thêm bình luận product
function product_addtoreview($masp,$id,$nd){
  global $conn;
  $sql="INSERT INTO `binhluan`( `MaSP`, `MaKH`, `NoiDung`) VALUES('$masp',".$id.",'$nd')";
  $resulf = mysqli_query($conn ,$sql);  
  if($resulf){
      return true;
    }else{
      return  false;
    }     
  mysqli_close($conn);
}
/////// tải thêm nhiều sản phẩm với ajax
if (isset($_POST['page'])==true) {
  $page = $_POST['page']*12;
  $row_count = $_POST['rowCount'];
  $sql="SELECT * FROM `sanpham`  limit 12,".$page;
  $res=selectdata($sql); ?>
  <div class="row pad-dt"><?php  while( $row=mysqli_fetch_array($res)){ ?>
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
      </div><?php }  ?>
  </div>
<?php
};


// ------------------------------------------ Category MODEL----------------------
// danh mục 
function categorys(){
  global $conn;
  $sql=" SELECT * FROM `nhacc` ";
  $resulf=mysqli_query($conn,$sql);
    $count=mysqli_num_rows($resulf);    
    if($count==0){
        return false;
      }else{
        return  $resulf;
      }     
    mysqli_close($conn);
}
// lấy danh sách sản phẩm theo danh mục
function product_category($id){
  global $conn;
  $sql=" SELECT * FROM `sanpham` where MaNCC = $id" ;
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf);    
  if($count==0){
      return false;
    }else{
      return  $resulf;
    }     
  mysqli_close($conn);
}

// -------------------------------------------------------------------------------
// ------------------------------------------ card MODEL----------------------
// xử lý đặt hàng

function order_product($nn, $dcnn, $sdtnn, $makh, $tt) {
  global $conn;

  // Truy vấn INSERT hóa đơn
  $sql = "INSERT INTO `hoadon`(`MaKH`, `TinhTrang`, `TongTien`) VALUES (?, 'chưa duyệt', ?)";
  $stmt = mysqli_prepare($conn, $sql);

  // Kiểm tra lỗi Prepared Statements
  if (!$stmt) {
      die('Query failed: ' . mysqli_error($conn));
  }

  // Bắt đầu bind tham số
  mysqli_stmt_bind_param($stmt, 'ii', $makh, $tt);

  // Thực hiện truy vấn
  $resulf = mysqli_stmt_execute($stmt);

  // Kiểm tra và lấy mã hóa đơn vừa thêm
  if ($resulf) {
      $last_insert_id = mysqli_insert_id($conn);
      
      // Truy vấn INSERT chi tiết hóa đơn
      foreach ($_SESSION['cart_product'] as $item) {
          $DonGia = str_replace(',', '', $item['DonGia']);
          $ttt = ($item['SoLuong'] * $DonGia);
          $masp = $item['MaSP']; 
          $sl = $item['SoLuong']; 
          $dg = $DonGia; 
          $mamau = $item['Mau']; 
          $size = $item['Size'];

          $sql3 = "INSERT INTO `chitiethoadon`(`MaHD`, `MaSP`, `SoLuong`, `DonGia`, `ThanhTien`, `Size`, `MaMau`) VALUES (?, ?, ?, ?, ?, ?, ?)";
          $stmt3 = mysqli_prepare($conn, $sql3);

          // Kiểm tra lỗi Prepared Statements
          if (!$stmt3) {
              die('Query failed: ' . mysqli_error($conn));
          }

          // Bắt đầu bind tham số
          mysqli_stmt_bind_param($stmt3, 'iiidiss', $last_insert_id, $masp, $sl, $dg, $ttt, $size, $mamau);

          // Thực hiện truy vấn
          $rs3 = mysqli_stmt_execute($stmt3);

          // Truy vấn UPDATE số lượng sản phẩm
          $sql_sl = "UPDATE `chitietsanpham` SET `SoLuong`=(`SoLuong` - ?) WHERE `MaSP`=? AND `MaSize`=? AND `MaMau`=?";
          $stmt_sl = mysqli_prepare($conn, $sql_sl);

          // Kiểm tra lỗi Prepared Statements
          if (!$stmt_sl) {
              die('Query failed: ' . mysqli_error($conn));
          }

          // Bắt đầu bind tham số
          mysqli_stmt_bind_param($stmt_sl, 'issi', $sl, $masp, $size, $mamau);

          // Thực hiện truy vấn
          $rs_sl = mysqli_stmt_execute($stmt_sl);

          // Đóng statement
          mysqli_stmt_close($stmt3);
          mysqli_stmt_close($stmt_sl);
      }

      // Truy vấn INSERT thông tin người nhận
      $sql4 = "INSERT INTO `nguoinhan`(`MaHD`, `TenNN`, `DiaChiNN`, `SDTNN`) VALUES (?, ?, ?, ?)";
      $stmt4 = mysqli_prepare($conn, $sql4);

      // Kiểm tra lỗi Prepared Statements
      if (!$stmt4) {
          die('Query failed: ' . mysqli_error($conn));
      }

      // Bắt đầu bind tham số
      mysqli_stmt_bind_param($stmt4, 'isss', $last_insert_id, $nn, $dcnn, $sdtnn);

      // Thực hiện truy vấn
      $rs4 = mysqli_stmt_execute($stmt4);

      // Đóng statement
      mysqli_stmt_close($stmt4);

      // Kiểm tra và trả kết quả
      if ($rs4) {
          unset($_SESSION['cart_product']);
          return true; // Thành công
      } else {
          return false; // Lỗi khi thêm thông tin người nhận
      }
  } else {
      return false; // Lỗi khi thêm hóa đơn
  }

  // Lưu ý: Không cần đặt mã đóng kết nối mysqli_close($conn) ở đây vì nó sẽ được tự động đóng khi script kết thúc.
}

// -------------------------------------------------------------------------------
// ------------------------------------------ user MODEL----------------------
// đăng ký mới
function newUser($name,$email,$sdt,$address,$password){
  global $conn;
  $sql="INSERT INTO `khachhang`( `TenKH`, `Email`, `SDT`, `DiaChi`, `MatKhau`) VALUES ('$name','$email','$sdt','$address','$password')";
  $resulf=mysqli_query($conn,$sql);
  if($resulf){
      return true;
    }else{
      return false;
    }     
  mysqli_close($conn);
}
// -------------------------
// select khách hàng
function selectKH($id){
  global $conn;
  $sql="SELECT * FROM khachhang WHERE MaKH = $id";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf); 
  if($count==0){
      return false;
    }else{
      return mysqli_fetch_array($resulf);
    }     
  mysqli_close($conn);
}
// -------------------------

// update khách hàng
function update_user($id,$ten,$sdt,$dc,$matkhau){
  global $conn;
  $sql="UPDATE `khachhang` SET `TenKH`='$ten',`SDT`=$sdt,`DiaChi`='$dc',`MatKhau`='$matkhau' WHERE `MaKH`=$id";
  $resulf=mysqli_query($conn,$sql);
  return $resulf;
  mysqli_close($conn);
}
// -------------------------
// đơn hàng của khách hàng
function bill_user($id){
  global $conn;
  $sql="SELECT * FROM `hoadon` WHERE MaKH = $id ORDER BY NgayDat DESC";
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf); 
  if($count==0){
      return false;
    }else{
      return $resulf;
    }     
  mysqli_close($conn);
}
// -------------------------------------------------------------------------------
// ------------------------------------------ admin  ----------------------
// chi tiết hóa đơn
function bill_detail($id){
  global $conn;
  $sql="SELECT * FROM chitiethoadon WHERE MaHD = $id" ;
  $resulf=mysqli_query($conn,$sql);
  $count=mysqli_num_rows($resulf); 
  if($count==0){
      return false;
    }else{
      return $resulf;
    }     
  mysqli_close($conn);
}

// -------------------------------------------------------------------------------
?>



