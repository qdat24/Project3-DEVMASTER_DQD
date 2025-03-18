<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chỉnh Sửa Sản Phẩm</title>
    <style>
body {
    font-family: 'Roboto', sans-serif;
    background: linear-gradient(rgba(255, 255, 255, 0.7), rgba(255, 255, 255, 0.7)), 
                url('https://cdn.nhathuoclongchau.com.vn/unsafe/640x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/destop_mobile_health_insight_page_46ec0205ad.jpg') no-repeat center center fixed;
    background-size: cover;
    margin: 0;
    padding: 0;
    color: #333;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.container {
    width: 90%;
    max-width: 600px;
    background: rgba(255, 255, 255, 0.97);
    padding: 30px;
    border-radius: 16px;
    box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
    transition: all 0.3s ease;
}

h1 {
    font-size: 28px;
    font-weight: 700;
    text-transform: uppercase;
    color: #2c6cb5;
    margin-bottom: 25px;
    padding: 15px;
    border-radius: 10px;
    background: linear-gradient(135deg, #e0eafc, #cfdef3);
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    margin-top: 20px;
    border-collapse: collapse;
}

td {
    padding: 12px 8px;
    font-size: 16px;
    color: #444;
    text-align: left;
}

td:first-child {
    width: 35%;
    font-weight: 500;
}

input[type="text"], input[type="number"] {
    width: 100%;
    padding: 12px 15px;
    border: 2px solid #dce7f8;
    border-radius: 8px;
    font-size: 16px;
    background: #f8faff;
    transition: all 0.3s ease;
    box-sizing: border-box;
}

input[type="text"]:focus, input[type="number"]:focus {
    border-color: #4A90E2;
    outline: none;
    box-shadow: 0 0 8px rgba(74, 144, 226, 0.4);
    background: #fff;
}

input[type="submit"] {
    background: linear-gradient(to right, #4A90E2, #5CA5F5);
    color: white;
    padding: 14px 20px;
    border: none;
    border-radius: 8px;
    font-size: 18px;
    font-weight: 600;
    cursor: pointer;
    transition: all 0.3s ease;
    width: 100%;
    margin-top: 10px;
    box-shadow: 0 4px 10px rgba(74, 144, 226, 0.3);
}

input[type="submit"]:hover {
    background: linear-gradient(to right, #357ABD, #4A90E2);
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(74, 144, 226, 0.4);
}

input[type="submit"]:active {
    transform: translateY(0);
}

.back-btn {
    display: inline-block;
    margin-top: 25px;
    padding: 12px 20px;
    background: linear-gradient(to right, #7B92B1, #95A9C6);
    color: white;
    text-decoration: none;
    border-radius: 8px;
    font-size: 16px;
    font-weight: 500;
    transition: all 0.3s ease;
    box-shadow: 0 4px 8px rgba(123, 146, 177, 0.3);
}

.back-btn:hover {
    background: linear-gradient(to right, #5F7EA1, #7B92B1);
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(123, 146, 177, 0.4);
}

.back-btn:active {
    transform: translateY(0);
}

.footer {
    margin-top: 30px;
    font-size: 14px;
    color: #777;
    text-align: center;
    padding-top: 15px;
    border-top: 1px solid #eaeaea;
}

/* Responsive adjustments */
@media (max-width: 768px) {
    .container {
        width: 95%;
        padding: 20px;
    }
    
    h1 {
        font-size: 24px;
        padding: 12px;
    }
    
    td {
        padding: 10px 6px;
        display: block;
    }
    
    td:first-child {
        width: 100%;
        padding-bottom: 5px;
    }
    
    input[type="text"], input[type="number"] {
        padding: 10px;
    }
}

@media (max-width: 480px) {
    .container {
        padding: 15px;
    }
    
    h1 {
        font-size: 20px;
    }
    
    input[type="submit"], .back-btn {
        padding: 12px 15px;
        font-size: 16px;
    }
}
    </style>
</head>
<body>
    <div class="container">
        <h1>Chỉnh Sửa Sản Phẩm</h1>
        <form:form method="POST" action="/SpringMVCPagination/luu">
            <table>
                <tr>
                    <td></td>
                    <td><form:hidden path="id" /></td>
                </tr>
                <tr>
                    <td>Tên sản phẩm:</td>
                    <td><form:input path="dqd_name" /></td>
                </tr>
                <tr>
                    <td>Ảnh URL:</td>
                    <td><form:input path="dqd_hinhanh" /></td>
                </tr>
                <tr>
                    <td>Giá:</td>
                    <td><form:input path="dqd_gia" type="number" /></td>
                </tr>
                <tr>
                    <td>Số lượng:</td>
                    <td><form:input path="dqd_soluong" type="number" /></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Lưu Sản Phẩm" />
                    </td>
                </tr>
            </table>
        </form:form>
        <a href="javascript:history.back()" class="back-btn">Quay Lại</a>
        <a href="/SpringMVCPagination/home">Về Trang Chủ</a>
    <div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
    </div>
</body>
</html>
