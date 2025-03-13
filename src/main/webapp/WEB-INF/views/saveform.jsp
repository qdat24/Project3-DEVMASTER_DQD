<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thêm Sản Phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #e0f7fa; /* Màu xanh nhạt dịu mắt */
            text-align: center;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 50%;
            margin: auto;
            background: rgba(255, 255, 255, 0.9);
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 40px;
            font-weight: bold;
            text-transform: uppercase;
            color: #004d40;
            background: #80cbc4;
            padding: 20px;
            border-radius: 10px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
        }

        table {
            width: 100%;
            margin-top: 20px;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
            font-size: 18px;
        }

        input[type="text"], input[type="number"] {
            width: 100%;
            padding: 8px;
            border: 2px solid #26a69a;
            border-radius: 5px;
            font-size: 16px;
        }

        input[type="submit"] {
            background: #00796b;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            transition: 0.3s;
        }

        input[type="submit"]:hover {
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
    </style>
</head>
<body>
    <div class="container">
        <h1>Thêm Sản Phẩm</h1>
        <form:form method="post" action="/SpringMVCPagination/save">
            <table>
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
    </div>
    <div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
    </div>
</body>
</html>
