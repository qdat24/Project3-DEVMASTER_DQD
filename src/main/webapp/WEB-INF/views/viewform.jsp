<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Danh Sách Sản Phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e0f7fa; /* Nền màu xanh nhạt dịu mắt */
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .container {
            width: 80%;
            max-width: 1200px;
            background: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            text-align: center;
        }

        h1 {
            color: #004d40;
            padding: 20px;
            background: #80cbc4;
            border-radius: 10px;
        }

        .product-list {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-top: 20px;
        }

        .product-item {
            background: #ffffff;
            padding: 15px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 250px;
            border: 2px solid #26a69a;
        }

        .product-item img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .product-item p {
            font-size: 16px;
            color: #004d40;
            margin: 5px 0;
        }

        .buy-btn { background: #00796b; }
        .edit-btn { background: #4db6ac; }
        .delete-btn { background: #00897b; }

        .action-buttons {
            margin-top: 20px;
        }

        .action-buttons a {
            display: inline-block;
            padding: 12px 20px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            background: #00796b;
            transition: 0.3s;
        }

        .action-buttons a:hover {
            background: #004d40;
        }

        .footer {
            margin-top: 20px;
            padding: 10px;
            background: #80cbc4;
            color: white;
            text-align: center;
            border-radius: 0 0 10px 10px;
            width: 100%;
        }

        .pagination {
            margin-top: 20px;
        }

        .pagination a {
            padding: 5px 10px;
            margin: 0 5px;
            text-decoration: none;
            background: #26a69a;
            color: white;
            border-radius: 5px;
        }

        .pagination a:hover {
            background: #004d40;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Danh Sách Sản Phẩm</h1>
        <div class="product-list">
            <c:forEach var="product" items="${list}">
                <div class="product-item">
                    <h2>${product.dqd_name}</h2>
                    <img src="${product.dqd_hinhanh}" alt="Hình ảnh sản phẩm" title="Hình ảnh sản phẩm ${product.dqd_name}"/>
                    <p>Giá: ${product.dqd_gia} VND</p>
                    <p>Số Lượng: ${product.dqd_soluong}</p>
                    
                    <a href="<c:url value='/add-to-cart'>
                        <c:param name='id' value='${product.id}'/>
                        <c:param name='dqd_name' value='${product.dqd_name}'/>
                        <c:param name='dqd_hinhanh' value='${product.dqd_hinhanh}'/>
                        <c:param name='dqd_gia' value='${product.dqd_gia}'/>
                    </c:url>" class="buy-btn" title="Thêm vào giỏ hàng">Mua</a>
                    <a href="sua/${product.id}" class="edit-btn" title="Chỉnh sửa sản phẩm">Edit</a>
                    <a href="javascript:void(0)" class="delete-btn" onclick="confirmDelete('${product.id}')" title="Xóa sản phẩm">Delete</a>
                </div>
            </c:forEach>
        </div>

        <!-- Phân trang -->
        <div class="pagination">
            <c:forEach var="i" begin="1" end="${totalPages}">
                <a href="<c:url value='/product-list?page=${i}' />">${i}</a>
            </c:forEach>
        </div>

        <div class="action-buttons">
            <a href="saveform">Thêm Sản Phẩm</a>
            <a href="giohang">Giỏ Hàng</a>
            <a href="<c:url value='/' />">Về Trang Chủ</a>
        </div>

        <br/>
        <input type="button" value="Back" onclick="window.history.back();" />
    </div>

    <div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
    </div>

    <script>
        function confirmDelete(productId) {
            if (confirm('Bạn có chắc chắn muốn xóa sản phẩm này?')) {
                window.location.href = 'xoa/' + productId;
            }
        }
    </script>
</body>
</html>
