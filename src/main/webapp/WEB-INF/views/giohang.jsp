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
        font-family: Arial, sans-serif;
        background: url('https://cdn.nhathuoclongchau.com.vn/unsafe/640x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/destop_mobile_health_insight_page_46ec0205ad.jpg') no-repeat center center/cover;
        background-size: cover;
        text-align: center;
        margin: 0;
        padding: 0;
    }
    .container {
        width: 80%;
        margin: 50px auto;
        background: rgba(200, 230, 201, 0.9); /* Màu xanh lá nhạt, dịu mắt hơn */
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }
    h1 {
        color: white;
        background: #66bb6a; /* Màu xanh lá cây nhạt */
        padding: 20px;
        margin: 0;
        border-radius: 10px 10px 0 0;
    }
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 20px;
        background: #e8f5e9; /* Màu nền nhẹ nhàng hơn */
    }
    th, td {
        padding: 10px;
        border: 1px solid #ddd;
        text-align: center;
    }
    th {
        background: #43a047; /* Màu xanh lá đậm hơn để tạo điểm nhấn */
        color: white;
    }
    td img {
        width: 80px;
        height: 80px;
        border-radius: 5px;
    }
    .action-btn {
        display: inline-block;
        padding: 8px 15px;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: 0.3s;
    }
    .delete-btn {
        background: #ef5350;
    }
    .delete-btn:hover {
        background: #d32f2f;
    }
    .checkout-btn {
        display: block;
        margin: 20px auto;
        padding: 10px 20px;
        background: #43a047;
        color: white;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: 0.3s;
    }
    .checkout-btn:hover {
        background: #388e3c;
    }
    .empty-message {
        font-size: 18px;
        color: #d9534f;
    }
    .back-btn {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 20px;
        background: #81c784;
        color: white;
        text-decoration: none;
        border-radius: 5px;
        transition: 0.3s;
    }
    .back-btn:hover {
        background: #66bb6a;
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
            <h3>Tổng cộng: ${totalAmount} VND</h3>
        <form action="<c:url value='/xulythanhtoan' />" method="post">
            <label>Chọn phương thức thanh toán:</label>
            <select name="paymentMethod">
                <option value="NganHang">Ngân Hàng MB</option>
                <option value="MoMo">MoMo</option>
            </select>
            <button type="submit" class="checkout-btn">Thanh toán</button>
        </form>

        </c:if>
        <c:if test="${empty cartItems}">
            <p class="empty-message">Giỏ hàng của bạn hiện tại trống.</p>
        </c:if>
        
        <a href="viewform" class="back-btn">Tiếp tục mua sắm</a>
        <a href="<c:url value='/' />">Về Trang Chủ</a> <!-- Điều hướng về index -->
    </div>
</body>
</html>