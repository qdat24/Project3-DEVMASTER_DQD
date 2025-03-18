<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thanh Toán Thành Công</title>
    <style>
body {
    font-family: 'Roboto', Arial, sans-serif;
    background: linear-gradient(135deg, #e0f7fa, #e8f5e9);
    margin: 0;
    padding: 0;
    min-height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    color: #333;
}

.container {
    width: 90%;
    max-width: 800px;
    padding: 40px 30px;
    background: #ffffff;
    border-radius: 16px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
    text-align: center;
    position: relative;
    overflow: hidden;
    margin: 40px auto;
}

.container::before {
    content: "";
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    height: 6px;
    background: linear-gradient(to right, #4CAF50, #8BC34A);
}

h2 {
    color: #2E7D32;
    font-size: 28px;
    margin-bottom: 30px;
    position: relative;
    padding-bottom: 15px;
    text-align: center;
}

h2::after {
    content: "";
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 80px;
    height: 3px;
    background: linear-gradient(to right, #4CAF50, #8BC34A);
    border-radius: 3px;
}

.success-message {
    color: #2E7D32;
    font-size: 22px;
    font-weight: 600;
    margin: 25px 0;
    padding: 15px;
    background-color: #f1f8e9;
    border-radius: 8px;
    border-left: 4px solid #4CAF50;
    text-align: left;
    display: inline-block;
}

.success-icon {
    display: block;
    width: 80px;
    height: 80px;
    margin: 0 auto 20px;
    background-color: #E8F5E9;
    border-radius: 50%;
    position: relative;
}

.success-icon::before {
    content: "✓";
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    font-size: 40px;
    color: #4CAF50;
    font-weight: bold;
}

p {
    margin: 15px 0;
    font-size: 16px;
    line-height: 1.6;
    color: #555;
}

strong {
    color: #444;
}

.payment-details {
    background-color: #f8f9fa;
    border-radius: 8px;
    padding: 20px;
    margin: 25px 0;
    text-align: left;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    border-left: 4px solid #4CAF50;
}

.payment-details h3 {
    color: #2E7D32;
    font-size: 20px;
    margin-top: 0;
    margin-bottom: 15px;
    border-bottom: 1px solid #e0e0e0;
    padding-bottom: 8px;
}

.detail-row {
    display: flex;
    justify-content: space-between;
    margin-bottom: 12px;
    font-size: 16px;
}

.detail-label {
    font-weight: 600;
    color: #555;
}

.detail-value {
    color: #333;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
    box-shadow: 0 2px 8px rgba(0, 0, 0, 0.08);
    border-radius: 8px;
    overflow: hidden;
}

th, td {
    padding: 15px;
    text-align: left;
}

th {
    background-color: #4CAF50;
    color: white;
    font-weight: 500;
    text-transform: uppercase;
    font-size: 14px;
}

tr:nth-child(even) {
    background-color: #f8f9fa;
}

tr:hover {
    background-color: #f1f4f7;
}

.back-btn {
    display: inline-block;
    padding: 14px 32px;
    background: linear-gradient(135deg, #2196F3, #1976D2);
    color: white;
    text-decoration: none;
    border-radius: 8px;
    margin-top: 30px;
    font-size: 17px;
    font-weight: 600;
    letter-spacing: 0.5px;
    transition: all 0.3s ease;
    box-shadow: 0 4px 10px rgba(33, 150, 243, 0.3);
}

.back-btn:hover {
    background: linear-gradient(135deg, #1976D2, #0D47A1);
    transform: translateY(-2px);
    box-shadow: 0 6px 15px rgba(33, 150, 243, 0.4);
}

.back-btn:active {
    transform: translateY(0);
}

.order-id {
    font-family: monospace;
    background: #e8f5e9;
    padding: 3px 6px;
    border-radius: 4px;
    font-weight: bold;
    color: #2E7D32;
}

/* Animation for success message */
@keyframes fadeIn {
    from { opacity: 0; transform: translateY(20px); }
    to { opacity: 1; transform: translateY(0); }
}

.container > * {
    animation: fadeIn 0.6s ease-out forwards;
}

.container > *:nth-child(2) { animation-delay: 0.2s; }
.container > *:nth-child(3) { animation-delay: 0.4s; }
.container > *:nth-child(4) { animation-delay: 0.6s; }
.container > *:nth-child(5) { animation-delay: 0.8s; }

/* Responsive adjustments */
@media (max-width: 768px) {
    .container {
        width: 95%;
        padding: 30px 20px;
    }
    
    h2 {
        font-size: 24px;
    }
    
    .success-message {
        font-size: 18px;
        padding: 12px;
    }
    
    .success-icon {
        width: 70px;
        height: 70px;
    }
    
    .success-icon::before {
        font-size: 35px;
    }
    
    .payment-details {
        padding: 15px;
    }
    
    .payment-details h3 {
        font-size: 18px;
    }
    
    .detail-row {
        font-size: 14px;
    }
    
    table {
        font-size: 14px;
    }
    
    th, td {
        padding: 10px;
    }
}

@media (max-width: 480px) {
    .container {
        width: 95%;
        padding: 25px 15px;
    }
    
    h2 {
        font-size: 22px;
    }
    
    .success-message {
        font-size: 16px;
        padding: 10px;
    }
    
    .back-btn {
        padding: 12px 24px;
        font-size: 16px;
        width: 80%;
    }
    
    .payment-details {
        padding: 10px;
    }
    
    .detail-row {
        flex-direction: column;
        margin-bottom: 15px;
    }
    
    .detail-value {
        margin-top: 3px;
    }
    
    h3 {
        font-size: 18px;
    }
    
    p, table {
        font-size: 14px;
    }
}
    </style>
</head>
<body>
    <div class="container">
        <div class="success-icon"></div>
        <h2>Thanh Toán Thành Công</h2>
        <p class="success-message">${message}</p>
        
        <div class="payment-details">
            <h3>Thông Tin Thanh Toán</h3>
            <div class="detail-row">
                <span class="detail-label">Mã Đơn Hàng:</span>
                <span class="detail-value order-id">${orderId}</span>
            </div>
            <div class="detail-row">
                <span class="detail-label">Phương Thức Thanh Toán:</span>
                <span class="detail-value">${paymentMethod}</span>
            </div>
            <div class="detail-row">
                <span class="detail-label">Tổng Tiền:</span>
                <span class="detail-value">${totalAmount} VNĐ</span>
            </div>
            <div class="detail-row">
                <span class="detail-label">Ngày Thanh Toán:</span>
                <span class="detail-value">${paymentDate}</span>
            </div>
        </div>
        
        <h3>Sản Phẩm Đã Mua</h3>
        <table>
            <tr>
                <th>Tên sản phẩm</th>
                <th>Số lượng</th>
            </tr>
            <c:forEach var="item" items="${cartItems}">
                <tr>
                    <td>${item.dqd_name}</td>
                    <td>${item.dqd_soluong}</td>
                </tr>
            </c:forEach>
        </table>
        
        <p>Cảm ơn bạn đã mua hàng! Đơn hàng của bạn đang được xử lý.</p>
        <p>Bạn sẽ nhận được email xác nhận đơn hàng trong thời gian sớm nhất.</p>
        
        <a href="/SpringMVCPagination/home" class="back-btn">Về Trang Chủ</a>
    </div>
</body>
</html>