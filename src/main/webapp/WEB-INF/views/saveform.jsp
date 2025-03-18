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
    font-family: 'Segoe UI', Roboto, Arial, sans-serif;
    background: linear-gradient(135deg, #e0f7fa 0%, #b2ebf2 100%);
    margin: 0;
    padding: 30px 0;
    min-height: 100vh;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}

.container {
    width: 90%;
    max-width: 600px;
    margin: 20px auto;
    background: rgba(255, 255, 255, 0.95);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 10px 25px rgba(0, 0, 0, 0.12);
}

h1 {
    font-size: 28px;
    font-weight: 600;
    color: #00695c;
    padding: 18px 25px;
    background: linear-gradient(to right, #80cbc4, #4db6ac);
    border-radius: 12px;
    margin-top: 0;
    margin-bottom: 30px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    letter-spacing: 0.5px;
    text-transform: uppercase;
    text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.1);
}

table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 20px;
}

td {
    padding: 12px 8px;
    vertical-align: middle;
    font-size: 16px;
    color: #00796b;
    font-weight: 500;
}

td:first-child {
    width: 120px;
    text-align: right;
    padding-right: 15px;
}

input[type="text"], 
input[type="number"] {
    width: 100%;
    padding: 12px 15px;
    border: 1px solid #b2dfdb;
    border-radius: 8px;
    font-size: 15px;
    transition: all 0.3s;
    box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05);
    background-color: #f9ffff;
}

input[type="text"]:focus, 
input[type="number"]:focus {
    border-color: #26a69a;
    outline: none;
    box-shadow: 0 0 0 2px rgba(38, 166, 154, 0.2), inset 0 1px 3px rgba(0, 0, 0, 0.05);
}

input[type="submit"] {
    background: linear-gradient(to right, #00796b, #00695c);
    color: white;
    padding: 12px 25px;
    border: none;
    border-radius: 8px;
    font-size: 16px;
    cursor: pointer;
    transition: all 0.3s;
    display: block;
    margin: 10px auto 0;
    width: 80%;
    max-width: 250px;
    font-weight: 600;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

input[type="submit"]:hover {
    background: linear-gradient(to right, #00695c, #004d40);
    transform: translateY(-2px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.15);
}

input[type="submit"]:active {
    transform: translateY(0);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.footer {
    margin-top: 20px;
    padding: 15px;
    background: linear-gradient(to right, #80cbc4, #4db6ac);
    color: #004d40;
    text-align: center;
    border-radius: 10px;
    width: 90%;
    max-width: 600px;
    font-weight: 500;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Hiệu ứng bổ sung */
.container::before {
    content: '';
    position: absolute;
    top: -10px;
    left: 10px;
    right: 10px;
    height: 10px;
    border-radius: 10px 10px 0 0;
    background: rgba(255, 255, 255, 0.6);
}

/* Responsive */
@media (max-width: 768px) {
    .container {
        width: 95%;
        padding: 20px;
    }
    
    h1 {
        font-size: 22px;
        padding: 15px;
    }
    
    td {
        display: block;
        width: 100%;
        text-align: left;
        padding: 8px 0;
    }
    
    td:first-child {
        width: 100%;
        text-align: left;
        padding-bottom: 5px;
        padding-top: 15px;
    }
    
    input[type="text"], 
    input[type="number"] {
        padding: 10px;
    }
    
    input[type="submit"] {
        width: 100%;
    }
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
