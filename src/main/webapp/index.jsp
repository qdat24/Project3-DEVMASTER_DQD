<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hệ Thống Quản Lý Hiệu Thuốc Tư Nhân</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: #f0f8ff; /* Màu nền xanh dịu nhẹ */
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        /* BANNER */
        .banner {
            width: 100%;
            height: 250px;
            overflow: hidden;
            text-align: center;
            margin-bottom: 10px;
        }

        .banner img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            border-radius: 5px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
        }

        /* CONTAINER */
        .container {
            display: flex;
            width: 90%;
            max-width: 1300px;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.2);
        }

        /* SIDEBAR */
        .sidebar {
            width: 250px;
            background: #2c3e50;
            color: white;
            padding: 20px;
            height: 100vh;
        }

        .sidebar h2 {
            text-align: center;
            font-size: 22px;
            font-weight: bold;
            border-bottom: 2px solid #1abc9c;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
        }

        .sidebar ul li {
            padding: 12px;
            transition: background 0.3s;
        }

        .sidebar ul li a {
            color: white;
            text-decoration: none;
            display: block;
            font-size: 16px;
            font-weight: 500;
            padding: 10px;
            border-radius: 5px;
            transition: background 0.3s, transform 0.2s;
        }

        .sidebar ul li a:hover {
            background: #1abc9c;
            transform: translateX(5px);
        }

        /* NỘI DUNG CHÍNH */
        .content {
            flex-grow: 1;
            padding: 40px;
            text-align: center;
            background: #ecf0f1;
        }

        .content h1 {
            color: #2c3e50;
            font-size: 28px;
            margin-bottom: 20px;
        }

        /* PRODUCT GRID */
        .product-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 20px;
            justify-content: center;
            padding: 20px;
        }

        .product-card {
            background: white;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
            transition: transform 0.3s ease;
            text-align: center;
        }

        .product-card:hover {
            transform: scale(1.05);
        }

        .product-card img {
            width: 100%;
            max-width: 200px;
            height: auto;
            border-radius: 10px;
            margin-bottom: 10px;
        }

        .product-card h3 {
            font-size: 18px;
            color: #2c3e50;
            margin-bottom: 10px;
        }

        .product-card p {
            color: #1abc9c;
            font-size: 16px;
            font-weight: bold;
        }

        .product-card button {
            background: #1abc9c;
            color: white;
            border: none;
            padding: 8px 12px;
            cursor: pointer;
            font-size: 14px;
            border-radius: 5px;
            transition: background 0.3s;
        }

        .product-card button:hover {
            background: #16a085;
        }
    </style>
</head>
<body>

    <!-- BANNER -->
    <div class="banner">
        <img src="https://cdn.nhathuoclongchau.com.vn/unsafe/640x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/destop_mobile_health_insight_page_46ec0205ad.jpg" alt="Banner Hiệu Thuốc">
    </div>

    <!-- CONTAINER CHỨA SIDEBAR VÀ NỘI DUNG -->
    <div class="container">

        <!-- SIDEBAR -->
        <div class="sidebar">
            <h2>Menu</h2>
            <ul>
                <li><a href="viewform">Sản Phẩm</a></li>
                <li><a href="giohang">Giỏ Hàng</a></li>
                <li><a href="khachhang/list">Khách Hàng</a></li>
                <li><a href="admin/list">Quản Trị</a></li>
                <li><a href="admin/login">Đăng Nhập</a></li>
            </ul>
        </div>

        <!-- NỘI DUNG CHÍNH -->
        <div class="content">
            <h1>Chào Mừng Đến Hệ Thống Quản Lý Hiệu Thuốc</h1>
            <p>Quản lý sản phẩm, khách hàng, giỏ hàng và hệ thống hiệu quả</p>

            <div class="product-container">
                <div class="product-card">
                    <img src="https://trungtamthuoc.com/images/item/gan_11.jpg" alt="Thuốc bổ gan">
                    <h3>Thuốc Bổ Gan</h3>
                    <p>Giá: 120.000 VND</p>
                    <button>Mua ngay</button>
                </div>

                <div class="product-card">
                    <img src="https://cdn.youmed.vn/tin-tuc/wp-content/uploads/2023/02/Panadol-Cam-Cum-1.jpg" alt="Thuốc cảm">
                    <h3>Thuốc Cảm Cúm</h3>
                    <p>Giá: 50.000 VND</p>
                    <button>Mua ngay</button>
                </div>
                <div class="product-card">
                    <img src="https://cdn.nhathuoclongchau.com.vn/unsafe/375x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/DSC_01959_4e83fd083f.jpg" alt="Thuốc cảm">
                    <h3>Enterogermina Gut Defense Sanofi</h3>
                    <p>Giá: 165.000đ</p>
                    <button>Mua ngay</button>
                </div>
            </div>
        </div>
    </div>

</body>
</html>
