<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Giỏ Hàng</title>
<style>
body {
    font-family: 'Segoe UI', Roboto, Arial, sans-serif;
    background: linear-gradient(rgba(0, 0, 0, 0.6), rgba(0, 0, 0, 0.6)),
                url('https://cdn.nhathuoclongchau.com.vn/unsafe/640x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/destop_mobile_health_insight_page_46ec0205ad.jpg') no-repeat center center/cover;
    background-attachment: fixed;
    margin: 0;
    padding: 20px;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
}

.container {
    width: 85%;
    max-width: 1000px;
    background: rgba(255, 255, 255, 0.92);
    padding: 0;
    border-radius: 16px;
    box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
    overflow: hidden;
}

h1 {
    color: white;
    background: linear-gradient(135deg, #43a047, #2e7d32);
    padding: 20px;
    margin: 0;
    font-size: 24px;
    font-weight: 600;
    letter-spacing: 0.5px;
    border-radius: 0;
}

h3 {
    color: #2e7d32;
    font-size: 20px;
    margin: 25px 0;
}

table {
    width: 92%;
    border-collapse: collapse;
    margin: 25px auto;
    background: white;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
}

th, td {
    padding: 15px 10px;
    border: none;
    text-align: center;
}

th {
    background: #43a047;
    color: white;
    font-weight: 600;
    font-size: 14px;
    text-transform: uppercase;
    letter-spacing: 0.5px;
}

tr:nth-child(even) {
    background-color: #f9f9f9;
}

tr {
    border-bottom: 1px solid #e0e0e0;
    transition: all 0.2s;
}

tr:hover {
    background-color: #f0f7f0;
}

td img {
    width: 80px;
    height: 80px;
    object-fit: cover;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s;
}

td img:hover {
    transform: scale(1.1);
}

.action-btn {
    display: inline-block;
    padding: 8px 16px;
    color: white;
    text-decoration: none;
    border-radius: 6px;
    font-weight: 600;
    transition: all 0.3s;
    font-size: 13px;
}

.delete-btn {
    background: #ef5350;
    box-shadow: 0 2px 5px rgba(239, 83, 80, 0.3);
}

.delete-btn:hover {
    background: #d32f2f;
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(211, 47, 47, 0.4);
}

.checkout-section {
    width: 92%;
    margin: 0 auto 25px;
    background: #f5f5f5;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
}

form {
    display: flex;
    flex-direction: column;
    align-items: center;
    margin: 20px auto;
    max-width: 600px;
}

.form-row {
    display: flex;
    width: 100%;
    margin-bottom: 15px;
    gap: 15px;
}

.form-group {
    flex: 1;
    margin-bottom: 15px;
}

label {
    display: block;
    margin-bottom: 8px;
    color: #2e7d32;
    font-weight: 600;
    font-size: 15px;
}

input[type="text"],
input[type="email"],
input[type="tel"] {
    padding: 12px 15px;
    border: 1px solid #ddd;
    border-radius: 6px;
    width: 100%;
    font-size: 15px;
    color: #333;
    background-color: white;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.05);
    transition: border-color 0.3s, box-shadow 0.3s;
}

input:focus {
    border-color: #43a047;
    box-shadow: 0 0 0 3px rgba(67, 160, 71, 0.2);
    outline: none;
}

.checkout-btn {
    display: block;
    padding: 12px 24px;
    background: linear-gradient(to right, #43a047, #388e3c);
    color: white;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s;
    box-shadow: 0 4px 8px rgba(67, 160, 71, 0.25);
    margin-top: 20px;
}

.checkout-btn:hover {
    background: linear-gradient(to right, #388e3c, #2e7d32);
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(56, 142, 60, 0.3);
}

.empty-message {
    font-size: 18px;
    color: #e53935;
    margin: 40px 0;
    padding: 20px;
    background: #ffebee;
    border-radius: 8px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.05);
    display: inline-block;
}

.navigation-links {
    margin: 25px 0;
    display: flex;
    justify-content: center;
    gap: 15px;
    flex-wrap: wrap;
    padding: 0 20px 20px;
}

.back-btn, .home-btn {
    display: inline-block;
    padding: 12px 20px;
    background: #66bb6a;
    color: white;
    text-decoration: none;
    border-radius: 8px;
    font-weight: 600;
    transition: all 0.3s;
    box-shadow: 0 3px 6px rgba(0, 0, 0, 0.1);
}

.back-btn {
    background: linear-gradient(to right, #66bb6a, #4caf50);
}

.home-btn {
    background: linear-gradient(to right, #81c784, #66bb6a);
}

.back-btn:hover, .home-btn:hover {
    transform: translateY(-3px);
    box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
}

.back-btn:hover {
    background: linear-gradient(to right, #4caf50, #43a047);
}

.home-btn:hover {
    background: linear-gradient(to right, #66bb6a, #43a047);
}

@media (max-width: 768px) {
    .container {
        width: 95%;
        padding: 0;
    }
    
    table {
        width: 95%;
        font-size: 14px;
    }
    
    td img {
        width: 60px;
        height: 60px;
    }
    
    .action-btn {
        padding: 6px 12px;
        font-size: 12px;
    }
    
    form {
        width: 95%;
    }
    
    .form-row {
        flex-direction: column;
        gap: 0;
    }
}
</style>
</head>
<body>
    <div class="container">
        <h1>Giỏ Hàng</h1>
        <c:if test="${not empty cartItems}">
            <table>
                <thead>
                    <tr>
                        <th>Tên sản phẩm</th>
                        <th>Ảnh</th>
                        <th>Giá</th>
                        <th>Số lượng</th>
                        <th>Tổng tiền</th>
                        <th>Hành động</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="item" items="${cartItems}">
                        <tr>
                            <td>${item.dqd_name}</td>
                            <td><img src="${item.dqd_hinhanh}" alt="Ảnh sản phẩm"></td>
                            <td>${item.dqd_gia} VND</td>
                            <td>${item.dqd_soluong}</td>
                            <td>${item.dqd_gia * item.dqd_soluong} VND</td>
                            <td><a href="xoagiohang/${item.id}" class="action-btn delete-btn">Xóa</a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <h3 style="text-align: center;">Tổng cộng: ${totalAmount} VND</h3>
            
            <div class="checkout-section">
                <form action="<c:url value='/xulythanhtoan' />" method="post">
                    <!-- Thông tin người dùng -->
                    <h3 style="align-self: flex-start; margin-bottom: 15px;">Thông tin người nhận</h3>
                    
                    <div class="form-row">
                        <div class="form-group">
                            <label for="fullName">Họ và tên</label>
                            <input type="text" id="fullName" name="fullName" required>
                        </div>
                        <div class="form-group">
                            <label for="phone">Số điện thoại</label>
                            <input type="tel" id="phone" name="phone" required>
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="address">Địa chỉ nhận hàng</label>
                        <input type="text" id="address" name="address" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="note">Ghi chú (không bắt buộc)</label>
                        <input type="text" id="note" name="note">
                    </div>
                    
                    <button type="submit" class="checkout-btn">Xác nhận đặt hàng</button>
                </form>
            </div>
        </c:if>
        
        <c:if test="${empty cartItems}">
            <p class="empty-message">Giỏ hàng của bạn hiện tại trống.</p>
        </c:if>
        
        <div class="navigation-links">
            <a href="viewform" class="back-btn">Tiếp tục mua sắm</a>
            <a href="/SpringMVCPagination/home" class="home-btn">Về Trang Chủ</a>
        </div>
    </div>
</body>
</html>