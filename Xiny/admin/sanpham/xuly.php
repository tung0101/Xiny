<?php
include_once('../../model/database.php');

// Thêm Sản Phẩm
if (isset($_POST['xlthem'])) {
    $tensp = $_POST['tensp'];
    $madm = $_POST['madm'];
    $mancc = $_POST['mancc'];
    $soluong = $_POST['soluong'];
    $dongia = $_POST['dongia'];
    $anhnen = $_FILES['anhnen']['name'];
    $AnhSP_tmp = $_FILES['anhnen']['tmp_name'];
    move_uploaded_file($AnhSP_tmp, '../../webroot/image/sanpham/' . $anhnen);
    $size = $_POST['size'];
    $mau = $_POST['mau'];
    $mota = isset($_POST['mota']) ? $_POST['mota'] : NULL;

    $sql_them = "INSERT INTO `sanpham`(`MaSP`, `TenSP`, `MaDM`, `MaNCC`, `MoTa`, `DonGia`, `AnhNen`) VALUES (NULL,'$tensp',$madm,$mancc,'$mota',$dongia,'$anhnen')";
    $rs_them = mysqli_query($conn, $sql_them);

    if (isset($rs_them)) {
        $sql_masp = "SELECT MaSP FROM sanpham WHERE TenSP='$tensp' ORDER BY MaSP DESC";
        $sr = mysqli_query($conn, $sql_masp);
        $qk = mysqli_fetch_array($sr);

        if (isset($qk)) {
            $so = (int) $qk['MaSP'];

            // Insert details into chitietsanpham
            foreach ($size as $key1 => $values1) {
                foreach ($mau as $key => $values) {
                    $sql_ctsp = "INSERT INTO chitietsanpham(MaSP, MaSize, MaMau, SoLuong) VALUES ('$so','$values1','$values','$soluong')";
                    $rs_ctsp = mysqli_query($conn, $sql_ctsp);
                }
            }
            // Thêm vào bảng anhsp
            $sql_addanhsp = "INSERT INTO `anhsp`(`MaSP`, `Anh1`, `Anh2`, `Anh3`, `Anh4`) VALUES ('$so', '', '', '', '')";
            mysqli_query($conn, $sql_addanhsp);

            $dem = 1;
            foreach ($_FILES['anhsp']['name'] as $key => $value) {
                $anhsp = $_FILES['anhsp']['name'][$key];
                $anh_tmp = $_FILES['anhsp']['tmp_name'][$key];

                if (!empty($anhsp)) {
                    // Chỉ cập nhật cột nếu tệp được cung cấp
                    move_uploaded_file($anh_tmp, '../../webroot/image/sanpham/' . $anhsp);
                    $sql_upanhsp = "UPDATE `anhsp` SET `Anh$dem` = '$anhsp' WHERE `MaSP` = '$so' ";
                    mysqli_query($conn, $sql_upanhsp);
                }

                $dem++;
            }


            header('location:../index.php?action=sanpham&view=themsp&thongbao=them');
        } else {
            header('location:../index.php?action=sanpham&view=themsp&thongbao=loi');
        }
    }
}

// Cập Nhật Sản Phẩm
if (isset($_POST['xlsua'])) {
    $masp = $_POST['masp'];
    $tensp = $_POST['tensp'];
    $madm = $_POST['madm'];
    $mancc = $_POST['mancc'];
    $dongia = $_POST['dongia'];

    // Kiểm tra xem có ảnh nền mới được chọn hay không
    if (isset($_FILES['anhnen']) && $_FILES['anhnen']['size'] > 0) {
        $anhnen = $_FILES['anhnen']['name'];
        $AnhSP_tmp = $_FILES['anhnen']['tmp_name'];
        move_uploaded_file($AnhSP_tmp, '../../webroot/image/sanpham/' . $anhnen);
        $sql_them = "UPDATE `sanpham` SET `TenSP`='$tensp', `MaDM`='$madm', `MaNCC`='$mancc', `DonGia`='$dongia', `AnhNen`='$anhnen' WHERE `MaSP`='$masp'";
    } else {
        $sql_them = "UPDATE `sanpham` SET `TenSP`='$tensp', `MaDM`='$madm', `MaNCC`='$mancc', `DonGia`='$dongia' WHERE `MaSP`='$masp'";
    }

    $rs_them = mysqli_query($conn, $sql_them);

    if (isset($rs_them)) {
        // Kiểm tra xem có ảnh sản phẩm mới được chọn hay không
        if (isset($_FILES['anhsp']) && !empty($_FILES['anhsp']['name'][0])) {
            // Xóa ảnhsp cũ
            $sql_delete_anhsp = "DELETE FROM `anhsp` WHERE `MaSP` = '$masp'";
            mysqli_query($conn, $sql_delete_anhsp);

            // Thêm hoặc cập nhật ảnhsp mới
            $dem = 1;
            foreach ($_FILES['anhsp']['name'] as $key => $value) {
                $anhsp = $_FILES['anhsp']['name'][$key];
                $anh_tmp = $_FILES['anhsp']['tmp_name'][$key];
                move_uploaded_file($anh_tmp, '../../webroot/image/sanpham/' . $anhsp);

                // Sử dụng ON DUPLICATE KEY UPDATE để xử lý trường hợp trùng khóa chính
                $sql_upanhsp = "INSERT INTO `anhsp` (`MaSP`, `Anh$dem`) VALUES ('$masp', '$anhsp') 
                                ON DUPLICATE KEY UPDATE `Anh$dem`='$anhsp'";
                mysqli_query($conn, $sql_upanhsp);

                $dem++;
            }
        }

        header('location:../index.php?action=sanpham&view=themsp&thongbao=sua');
    } else {
        header('location:../index.php?action=sanpham&view=themsp&thongbao=loi');
    }
}



// Xóa Sản Phẩm
if (isset($_GET['xoa'])) {
    $masp = $_GET['masp'];
    $delete = "DELETE FROM `chitietsanpham` WHERE MaSP = $masp";
    $rs_d = mysqli_query($conn, $delete);

    if ($rs_d) {
        $delete2 = "DELETE FROM `sanpham` WHERE MaSP = $masp";
        $rs_d2 = mysqli_query($conn, $delete2);

        if ($rs_d2) {
            $delete3 = "DELETE FROM `anhsp` WHERE MaSP = $masp";
            $rs_d3 = mysqli_query($conn, $delete3);

            if ($rs_d3) {
                header('location:../index.php?action=sanpham&thongbao=xoa');
            } else {
                header('location:../index.php?action=sanpham&view=themsp&thongbao=loi');
            }
        }
    }
}
?>