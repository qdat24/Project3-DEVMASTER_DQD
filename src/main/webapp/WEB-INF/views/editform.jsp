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
        background: url('https://cdn.nhathuoclongchau.com.vn/unsafe/640x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/destop_mobile_health_insight_page_46ec0205ad.jpg') no-repeat center center/cover;
        background-size: cover;
        text-align: center;
        margin: 0;
        padding: 0;
        color: #333;
    }

    .container {
        width: 50%;
        margin: auto;
        background: rgba(255, 255, 255, 0.95);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        transition: 0.3s;
    }

    h1 {
        font-size: 30px;
        font-weight: bold;
        text-transform: uppercase;
        color: #4A90E2;
        background: linear-gradient(90deg, #A1C4FD, #C2E9FB);
        padding: 15px;
        border-radius: 8px;
        text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
    }

    table {
        width: 100%;
        margin-top: 20px;
        border-collapse: collapse;
    }

    td {
        padding: 12px;
        font-size: 16px;
        color: #555;
    }

    input[type="text"], input[type="number"] {
        width: 100%;
        padding: 10px;
        border: 1px solid #A1C4FD;
        border-radius: 6px;
        font-size: 16px;
        background: #F8FAFC;
        transition: 0.3s;
    }

    input[type="text"]:focus, input[type="number"]:focus {
        border-color: #4A90E2;
        outline: none;
        box-shadow: 0 0 5px rgba(74, 144, 226, 0.3);
    }

    input[type="submit"] {
        background: #4A90E2;
        color: white;
        padding: 12px 18px;
        border: none;
        border-radius: 6px;
        font-size: 18px;
        cursor: pointer;
        transition: 0.3s;
    }

    input[type="submit"]:hover {
        background: #357ABD;
    }

    .back-btn {
        display: inline-block;
        margin-top: 20px;
        padding: 10px 15px;
        background: #7B92B1;
        color: white;
        text-decoration: none;
        border-radius: 6px;
        font-size: 16px;
        transition: 0.3s;
    }

    .back-btn:hover {
        background: #5F7EA1;
    }

    .footer {
        margin-top: 20px;
        font-size: 14px;
        color: #777;
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
    <div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
    </div>
</body>
</html>
