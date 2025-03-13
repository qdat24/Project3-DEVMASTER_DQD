<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Xử Lý Thanh Toán</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 50px;
        }
        .container {
            padding: 20px;
            background: #f9f9f9;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 50%;
            margin: auto;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
        }
        .qr-code {
            margin-top: 20px;
        }
        .payment-btn {
            display: inline-block;
            padding: 10px 20px;
            background: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin-top: 20px;
        }
        .payment-btn:hover {
            background: #218838;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Thông Tin Thanh Toán</h2>
        <p><strong>Tổng tiền:</strong> ${totalAmount} VND</p>
        <p><strong>Phương thức thanh toán:</strong> ${paymentMethod}</p>

        <h3>Danh sách sản phẩm:</h3>
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

        <c:choose>
            <c:when test="${not empty paymentUrl}">
                <p>Quét mã QR để thanh toán:</p>
                <img src="${paymentUrl}" alt="QR Code" class="qr-code">
            </c:when>
            <c:otherwise>
                <p>Không tìm thấy mã QR thanh toán.</p>
            </c:otherwise>
        </c:choose>

        <br><br>
        <form action="thanhtoan-thanhcong" method="POST">
            <button type="submit" class="payment-btn">✅ Xác nhận thanh toán</button>
        </form>

        <style>
            .payment-btn {
                background: linear-gradient(135deg, #28a745, #218838);
                border: none;
                color: white;
                font-size: 18px;
                padding: 12px 20px;
                border-radius: 8px;
                cursor: pointer;
                transition: 0.3s;
                box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
            }

            .payment-btn:hover {
                background: linear-gradient(135deg, #218838, #1e7e34);
                transform: scale(1.05);
            }
        </style>

        <a href="giohang">Quay lại giỏ hàng</a>
    </div>
</body>
</html>
