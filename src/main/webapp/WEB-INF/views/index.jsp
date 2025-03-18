<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <title>Hệ Thống Quản Lý Hiệu Thuốc Tư Nhân</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* GLOBAL STYLES */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
        }

        body {
            background: linear-gradient(135deg, #e0f7fa 0%, #f0f8ff 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            color: #333;
        }

        /* BANNER */
        .banner {
            width: 100%;
            height: 320px;
            overflow: hidden;
            position: relative;
            margin-bottom: 40px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
            border-bottom: 5px solid rgba(26, 188, 156, 0.7);
        }

        .banner::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: linear-gradient(to bottom, rgba(0,0,0,0.2), rgba(0,0,0,0));
            z-index: 1;
        }

        .banner img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 10s ease;
        }

        .banner:hover img {
            transform: scale(1.08);
        }

        /* CONTAINER */
        .container {
            display: flex;
            flex-direction: column;
            width: 92%;
            max-width: 1400px;
            background: white;
            border-radius: 24px;
            overflow: hidden;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.12);
            margin-bottom: 50px;
            position: relative;
            border: 1px solid rgba(236, 240, 241, 0.8);
        }

        /* SIDEBAR */
        .sidebar {
            width: 100%;
            background: linear-gradient(145deg, #2c3e50, #1a2a6c, #2c3e50);
            color: white;
            padding: 25px 0;
            position: relative;
            transition: all 0.4s ease;
            z-index: 10;
        }

        .sidebar h2 {
            text-align: center;
            font-size: 26px;
            font-weight: 700;
            letter-spacing: 2px;
            text-transform: uppercase;
            margin-bottom: 22px;
            padding: 0 20px 18px;
            position: relative;
            color: #ffffff;
            text-shadow: 0 2px 4px rgba(0,0,0,0.3);
        }

        .sidebar h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 90px;
            height: 4px;
            background: linear-gradient(to right, #1abc9c, #16a085);
            border-radius: 2px;
        }

        .sidebar ul {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: center;
            flex-wrap: wrap;
            gap: 10px;
        }

        .sidebar ul li {
            margin: 8px 10px;
            position: relative;
            transition: all 0.3s ease;
        }

        .sidebar ul li a {
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
            font-size: 17px;
            font-weight: 500;
            padding: 14px 28px;
            border-radius: 14px;
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            background: rgba(255, 255, 255, 0.1);
            position: relative;
            overflow: hidden;
            z-index: 1;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        .sidebar ul li a::before {
            content: '';
            position: absolute;
            left: 0;
            bottom: 0;
            height: 4px;
            width: 0;
            background: #1abc9c;
            transition: all 0.3s ease;
        }

        .sidebar ul li a span {
            position: relative;
            margin-right: 10px;
            font-size: 20px; /* Increased size for emoji stickers */
        }

        .sidebar ul li:hover {
            transform: translateY(-5px);
        }

        .sidebar ul li a:hover {
            background: rgba(255, 255, 255, 0.18);
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        }

        .sidebar ul li a:hover::before {
            width: 100%;
        }

        /* CONTENT */
        .content {
            flex-grow: 1;
            padding: 50px;
            background: linear-gradient(135deg, #f8f9fa 0%, #ecf0f1 100%);
            transition: all 0.3s ease;
        }

        .content h1 {
            color: #2c3e50;
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 20px;
            text-align: center;
            position: relative;
            padding-bottom: 20px;
            text-shadow: 0 1px 2px rgba(0,0,0,0.05);
        }

        .content h1::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 120px;
            height: 4px;
            background: linear-gradient(to right, #1abc9c, #3498db);
            border-radius: 3px;
        }

        .content p {
            color: #555;
            font-size: 19px;
            text-align: center;
            margin-bottom: 50px;
            max-width: 800px;
            margin-left: auto;
            margin-right: auto;
            line-height: 1.6;
        }

        /* PRODUCT GRID */
        .product-container {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 35px;
            padding: 20px 10px;
        }

        .product-card {
            background: white;
            border-radius: 18px;
            overflow: hidden;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.06);
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            position: relative;
            display: flex;
            flex-direction: column;
            height: 100%;
            border: 1px solid rgba(236, 240, 241, 0.8);
        }

        .product-card:hover {
            transform: translateY(-15px);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.12);
        }

        .product-card img {
            width: 100%;
            height: 220px;
            object-fit: cover;
            transition: all 0.5s ease;
        }

        .product-card:hover img {
            transform: scale(1.08);
        }

        .product-card-content {
            padding: 25px;
            flex-grow: 1;
            display: flex;
            flex-direction: column;
        }

        .product-card h3 {
            font-size: 22px;
            color: #2c3e50;
            margin-bottom: 15px;
            line-height: 1.4;
            font-weight: 600;
            min-height: 60px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .product-card p {
            color: #1abc9c;
            font-size: 24px;
            font-weight: 700;
            margin: 10px 0 25px;
            text-align: center;
        }

        .product-card button {
            background: linear-gradient(to right, #1abc9c, #16a085);
            color: white;
            border: none;
            padding: 16px 0;
            font-size: 17px;
            font-weight: 600;
            border-radius: 12px;
            cursor: pointer;
            transition: all 0.3s ease;
            margin-top: auto;
            text-transform: uppercase;
            letter-spacing: 1px;
            position: relative;
            overflow: hidden;
            box-shadow: 0 5px 15px rgba(26, 188, 156, 0.3);
        }

        .product-card button:hover {
            background: linear-gradient(to right, #16a085, #1abc9c);
            box-shadow: 0 8px 20px rgba(26, 188, 156, 0.4);
            transform: translateY(-3px);
        }

        /* PRODUCT ITEM */
        .product-item {
            background: white;
            border-radius: 18px;
            overflow: hidden;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.06);
            transition: all 0.4s cubic-bezier(0.175, 0.885, 0.32, 1.275);
            position: relative;
            display: flex;
            flex-direction: column;
            margin-bottom: 30px;
            padding: 30px;
            text-align: center;
            border: 1px solid rgba(236, 240, 241, 0.8);
        }

        .product-item:hover {
            transform: translateY(-15px);
            box-shadow: 0 25px 50px rgba(0, 0, 0, 0.12);
        }

        .product-item img {
            width: 220px;
            height: 220px;
            object-fit: cover;
            margin: 0 auto 25px;
            border-radius: 12px;
            transition: all 0.5s ease;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
        }

        .product-item:hover img {
            transform: scale(1.08);
            box-shadow: 0 12px 30px rgba(0, 0, 0, 0.15);
        }

        .product-item h2 {
            font-size: 22px;
            color: #2c3e50;
            margin-bottom: 18px;
            position: relative;
            padding-bottom: 12px;
        }

        .product-item h2::after {
            content: '';
            position: absolute;
            bottom: 0;
            left: 50%;
            transform: translateX(-50%);
            width: 60px;
            height: 3px;
            background: #1abc9c;
            border-radius: 2px;
        }

        .product-item p {
            color: #555;
            margin: 10px 0;
            font-size: 17px;
        }

        .product-item p:nth-of-type(1) {
            color: #1abc9c;
            font-weight: 700;
            font-size: 20px;
        }

        .product-item .buy-btn {
            display: inline-block;
            background: linear-gradient(to right, #1abc9c, #16a085);
            color: white;
            text-decoration: none;
            padding: 14px 30px;
            border-radius: 12px;
            font-weight: 600;
            margin-top: 20px;
            transition: all 0.3s ease;
            letter-spacing: 1px;
            text-transform: uppercase;
            box-shadow: 0 5px 15px rgba(26, 188, 156, 0.3);
        }

        .product-item .buy-btn:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(26, 188, 156, 0.4);
            background: linear-gradient(to right, #16a085, #1abc9c);
        }

        /* FOOTER */
        .footer {
            width: 100%;
            background: linear-gradient(145deg, #2c3e50, #1a2a6c, #2c3e50);
            color: white;
            text-align: center;
            padding: 25px 0;
            margin-top: auto;
            font-size: 16px;
            box-shadow: 0 -5px 20px rgba(0, 0, 0, 0.1);
            border-top: 4px solid #1abc9c;
            letter-spacing: 0.5px;
        }

        /* RESPONSIVE ADJUSTMENTS */
        @media (max-width: 768px) {
            .content {
                padding: 30px 20px;
            }
            
            .product-container {
                grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
                gap: 25px;
            }
            
            .banner {
                height: 250px;
            }
            
            .content h1 {
                font-size: 28px;
            }
            
            .sidebar ul li a {
                padding: 12px 20px;
                font-size: 16px;
            }
        }

        @media (max-width: 576px) {
            .product-container {
                grid-template-columns: 1fr;
            }
            
            .product-item img {
                width: 180px;
                height: 180px;
            }
            
            .banner {
                height: 200px;
            }
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
                <li><a href="viewform"><span>📦</span> Quản Lý Sản Phẩm</a></li>
                <li><a href="giohang"><span>🛒</span> Giỏ Hàng</a></li>
                <li><a href="khachhang/list"><span>👥</span> Khách Hàng</a></li>
                <li><a href="admin/list"><span>⚙️</span> Quản Trị</a></li>
                <li><a href="admin/login"><span>🔑</span> Đăng Nhập</a></li>
            </ul>
        </div>

        <!-- NỘI DUNG CHÍNH -->
        <div class="content">
            <h1>Chào Mừng Đến Hệ Thống Quản Lý Hiệu Thuốc</h1>
            <p>Quản lý sản phẩm, khách hàng, giỏ hàng và hệ thống hiệu quả</p>

            <!-- Thêm div product-container để bao quanh danh sách sản phẩm -->
            <div class="product-container">
                <c:forEach var="product" items="${list}">
                    <div class="product-item">
                        <h2>${product.dqd_name}</h2>
                        <!-- Sửa đường dẫn hình ảnh - sử dụng URL trực tiếp -->
                        <img src="${product.dqd_hinhanh}" 
                             alt="Hình ảnh sản phẩm" 
                             title="Hình ảnh sản phẩm ${product.dqd_name}"
                             onerror="this.src='${pageContext.request.contextPath}/resources/images/default.jpg'; this.onerror='';"
                        />
                        <p>Giá: ${product.dqd_gia} VND</p>
                        <p>Số Lượng: ${product.dqd_soluong}</p>

                        <a href="<c:url value='/add-to-cart'>
                            <c:param name='id' value='${product.id}'/>
                            <c:param name='dqd_name' value='${product.dqd_name}'/>
                            <c:param name='dqd_hinhanh' value='${product.dqd_hinhanh}'/>
                            <c:param name='dqd_gia' value='${product.dqd_gia}'/>
                        </c:url>" class="buy-btn" title="Thêm vào giỏ hàng">Mua</a>
                    </div>
                </c:forEach>
            </div>
        </div>

    </div>

    <!-- FOOTER -->
    <div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
    </div>

</body>
</html>