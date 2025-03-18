<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Quản Lý Sản Phẩm</title>
    <style>
body {
    font-family: 'Segoe UI', Roboto, Arial, sans-serif;
    background: linear-gradient(135deg, #e0f7fa 0%, #b2ebf2 50%, #80deea 100%);
    margin: 0;
    padding: 40px 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    color: #37474f;
}

.container {
    width: 90%;
    max-width: 1200px;
    background: rgba(255, 255, 255, 0.95);
    padding: 30px;
    border-radius: 20px;
    box-shadow: 0 15px 35px rgba(0, 0, 0, 0.15);
    text-align: center;
    margin-bottom: 30px;
    backdrop-filter: blur(5px);
    border: 1px solid rgba(255, 255, 255, 0.2);
}

h1 {
    color: #004d40;
    padding: 20px 25px;
    background: linear-gradient(to right, #80cbc4, #26a69a);
    border-radius: 15px;
    margin-top: 5px;
    margin-bottom: 30px;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.12);
    font-weight: 700;
    letter-spacing: 1px;
    text-align: center;
    text-transform: uppercase;
    position: relative;
    overflow: hidden;
}

h1::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background: linear-gradient(120deg, transparent, rgba(255, 255, 255, 0.3), transparent);
    transform: translateX(-100%);
    animation: shimmer 3s infinite;
}

@keyframes shimmer {
    100% {
        transform: translateX(100%);
    }
}

/* Cân chỉnh lại grid sản phẩm */
.product-list {
    display: grid;
    grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
    gap: 25px;
    margin: 35px 0;
    padding: 0 15px;
}

.product-item {
    background: #ffffff;
    padding: 20px;
    border-radius: 16px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
    text-align: center;
    border: none;
    transition: all 0.4s ease;
    position: relative;
    overflow: hidden;
    display: flex;
    flex-direction: column;
    height: 340px; /* Chiều cao cố định cho tất cả sản phẩm */
    margin: 0;
}

.product-item:hover {
    transform: translateY(-8px);
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.15);
}

.product-item::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 6px;
    background: linear-gradient(to right, #26a69a, #00897b);
}

.product-item h2 {
    color: #00695c;
    font-size: 1.2rem;
    margin: 10px 0;
    font-weight: 600;
    height: 50px; /* Chiều cao cố định cho tiêu đề */
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    text-align: center;
    overflow: hidden;
    text-overflow: ellipsis;
    display: -webkit-box;
    -webkit-line-clamp: 2;
    -webkit-box-orient: vertical;
    padding: 0 5px;
}

.product-item img {
    width: 100%;
    height: 160px; /* Chiều cao cố định cho ảnh */
    object-fit: contain;
    border-radius: 12px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
    transition: transform 0.5s;
    margin: 0 auto;
    padding: 5px;
    background-color: #f5f5f5;
}

.product-item:hover img {
    transform: scale(1.05);
}

.product-details {
    flex-grow: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 10px 0;
    margin: 5px 0;
    height: 60px; /* Chiều cao cố định cho phần chi tiết */
}

.product-item p {
    font-size: 1rem;
    color: #00796b;
    margin: 5px 0;
    font-weight: 500;
    text-align: center;
    position: relative;
    line-height: 1.3;
}

.product-actions {
    display: flex;
    justify-content: center;
    gap: 10px;
    margin-top: auto; /* Đẩy xuống cuối */
    padding: 10px 0;
    height: 50px; /* Chiều cao cố định cho phần nút */
}

.product-item a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 8px 0;
    font-size: 0.95rem;
    font-weight: 600;
    color: white;
    border-radius: 8px;
    text-decoration: none;
    transition: all 0.3s;
    width: 80px;
    text-align: center;
    position: relative;
    overflow: hidden;
    z-index: 1;
}

.edit-btn { 
    background: #26a69a; 
}

.delete-btn { 
    background: #ef5350; 
}

.product-item a::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 0%;
    height: 100%;
    background: rgba(255, 255, 255, 0.2);
    transition: width 0.3s;
    z-index: -1;
}

.product-item a:hover::before {
    width: 100%;
}

.product-item a:hover {
    transform: translateY(-3px);
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

.edit-btn:hover {
    background: #00897b;
}

.delete-btn:hover {
    background: #e53935;
}

.action-buttons {
    margin-top: 35px;
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
    padding: 0 15px;
}

.action-buttons a {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 14px 28px;
    font-size: 1.1rem;
    font-weight: 600;
    color: white;
    border-radius: 12px;
    text-decoration: none;
    background: linear-gradient(145deg, #00897b, #00796b);
    transition: all 0.3s;
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
    margin: 5px;
    position: relative;
    overflow: hidden;
    letter-spacing: 0.5px;
}

.action-buttons a::before {
    content: '';
    position: absolute;
    top: 0;
    left: -100%;
    width: 100%;
    height: 100%;
    background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.2), transparent);
    transition: left 0.7s;
}

.action-buttons a:hover::before {
    left: 100%;
}

.action-buttons a:hover {
    background: linear-gradient(145deg, #00695c, #004d40);
    transform: translateY(-5px);
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
}

.footer {
    margin-top: 30px;
    padding: 20px;
    background: linear-gradient(to right, #4db6ac, #26a69a);
    color: #004d40;
    text-align: center;
    border-radius: 0 0 20px 20px;
    width: 100%;
    font-weight: 500;
    letter-spacing: 0.5px;
    position: relative;
    box-shadow: 0 -4px 15px rgba(0, 0, 0, 0.1);
}

.pagination {
    margin: 30px 0;
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    gap: 10px;
    padding: 0 15px;
}

.pagination a {
    padding: 10px 18px;
    text-decoration: none;
    background: #26a69a;
    color: white;
    border-radius: 8px;
    transition: all 0.3s ease;
    font-weight: 600;
    margin: 3px;
    position: relative;
    overflow: hidden;
}

.pagination a::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 0;
    background: rgba(255, 255, 255, 0.2);
    transition: height 0.3s;
}

.pagination a:hover::before {
    height: 100%;
}

.pagination a:hover {
    background: #00695c;
    transform: translateY(-3px);
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
}

input[type="button"] {
    padding: 14px 28px;
    background: linear-gradient(145deg, #b2dfdb, #80cbc4);
    color: #004d40;
    border: none;
    border-radius: 10px;
    cursor: pointer;
    font-weight: 600;
    transition: all 0.3s;
    margin-top: 20px;
    font-size: 1rem;
    letter-spacing: 0.5px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

input[type="button"]:hover {
    background: linear-gradient(145deg, #80cbc4, #4db6ac);
    transform: translateY(-3px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

/* Animation for product items on page load */
@keyframes fadeIn {
    from {
        opacity: 0;
        transform: translateY(20px);
    }
    to {
        opacity: 1;
        transform: translateY(0);
    }
}

.product-item {
    animation: fadeIn 0.6s ease-out forwards;
}

/* Individual delay for each product */
.product-item:nth-child(1) { animation-delay: 0.1s; }
.product-item:nth-child(2) { animation-delay: 0.2s; }
.product-item:nth-child(3) { animation-delay: 0.3s; }
.product-item:nth-child(4) { animation-delay: 0.4s; }
.product-item:nth-child(5) { animation-delay: 0.5s; }
.product-item:nth-child(6) { animation-delay: 0.6s; }
.product-item:nth-child(7) { animation-delay: 0.7s; }
.product-item:nth-child(8) { animation-delay: 0.8s; }

/* Đảm bảo sản phẩm hiển thị đẹp trên mọi thiết bị */
@media (max-width: 1200px) {
    .product-list {
        grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
    }
}

@media (max-width: 768px) {
    .container {
        width: 95%;
        padding: 20px;
    }
    
    .product-list {
        grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
        gap: 15px;
    }
    
    .product-item {
        padding: 15px;
        height: 320px;
    }
    
    .product-item h2 {
        font-size: 1.1rem;
        height: 45px;
    }
    
    .product-item img {
        height: 140px;
    }
    
    .action-buttons a {
        padding: 12px 20px;
        font-size: 1rem;
    }
}

@media (max-width: 480px) {
    h1 {
        font-size: 1.5rem;
        padding: 15px;
    }
    
    .product-list {
        grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
    }
    
    .product-item {
        height: 300px;
    }
    
    .product-item img {
        height: 130px;
    }
    
    .product-item h2 {
        font-size: 1rem;
        height: 40px;
    }
    
    .product-actions {
        height: 45px;
    }
    
    .product-item a {
        font-size: 0.9rem;
        width: 70px;
    }
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
<a href="/SpringMVCPagination/home">Về Trang Chủ</a>        </div>

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