<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Danh sách khách hàng</title>
    
    <style>
 body {
    font-family: 'Roboto', Arial, sans-serif;
    background: linear-gradient(135deg, #f8f9fa, #e9ecef);
    margin: 0;
    padding: 20px;
    color: #333;
    min-height: 100vh;
}

.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 20px;
}

h2 {
    color: #2c3e50;
    font-size: 28px;
    font-weight: 600;
    text-align: center;
    margin-bottom: 30px;
    position: relative;
    padding-bottom: 10px;
}

h2:after {
    content: '';
    position: absolute;
    bottom: 0;
    left: 50%;
    transform: translateX(-50%);
    width: 100px;
    height: 3px;
    background: linear-gradient(to right, #3498db, #2980b9);
    border-radius: 3px;
}

.actions-bar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 25px;
}

.home-link {
    display: inline-block;
    margin-top: 30px;
    color: #3498db;
    text-decoration: none;
    font-weight: 500;
    padding: 8px 15px;
    border-radius: 4px;
    transition: all 0.3s;
}

.home-link:hover {
    background-color: #eaf2fd;
    color: #2173b9;
    text-decoration: underline;
}

/* Button Styles */
button {
    padding: 10px 16px;
    margin: 5px;
    border: none;
    cursor: pointer;
    border-radius: 6px;
    font-size: 15px;
    font-weight: 500;
    transition: all 0.3s ease;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

button:hover {
    transform: translateY(-2px);
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.15);
}

button:active {
    transform: translateY(0);
}

button.add {
    background: linear-gradient(to right, #28a745, #20c997);
    color: white;
    padding: 12px 20px;
}

button.edit {
    background: linear-gradient(to right, #ffc107, #fd7e14);
    color: white;
}

button.delete {
    background: linear-gradient(to right, #dc3545, #c82333);
    color: white;
}

/* Table Styles */
.table-container {
    overflow-x: auto;
    border-radius: 8px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
}

table {
    width: 100%;
    border-collapse: collapse;
    background: white;
    overflow: hidden;
}

th, td {
    padding: 15px;
    text-align: left;
    border: none;
    border-bottom: 1px solid #e9ecef;
}

th {
    background: linear-gradient(to right, #3498db, #2980b9);
    color: white;
    font-weight: 500;
    text-transform: uppercase;
    font-size: 14px;
    letter-spacing: 0.5px;
}

tbody tr:hover {
    background-color: #f8f9fa;
}

td {
    font-size: 15px;
    color: #444;
}

/* Action column */
td:last-child {
    display: flex;
    gap: 8px;
    justify-content: flex-start;
}

/* Responsive adjustments */
@media (max-width: 768px) {
    .table-container {
        overflow-x: auto;
    }
    
    table {
        min-width: 600px;
    }
    
    h2 {
        font-size: 24px;
    }
    
    button {
        padding: 8px 12px;
        font-size: 14px;
    }
}

@media (max-width: 480px) {
    body {
        padding: 10px;
    }
    
    h2 {
        font-size: 22px;
    }
    
    button.add {
        width: 100%;
        margin-bottom: 15px;
    }
}
    </style>

    <script>
        function confirmDelete(id) {
            if (confirm("Bạn có chắc chắn muốn xóa khách hàng này không?")) {
                window.location.href = '${pageContext.request.contextPath}/khachhang/delete/' + id;
            }
        }
    </script>
</head>
<body>
    <h2>Danh sách khách hàng</h2>
    
    <!-- Nút Thêm khách hàng -->
    <a href="${pageContext.request.contextPath}/khachhang/add">
        <button class="add">Thêm khách hàng</button>
    </a>

    <table border="1">
        <tr>
            <th>ID</th>
            <th>Tên</th>
            <th>SĐT</th>
            <th>Email</th>
            <th>Địa chỉ</th>
            <th>Hành động</th> <!-- Thêm cột Hành động -->
        </tr>
        <c:forEach var="kh" items="${list}">
            <tr>
                <td>${kh.id}</td>
                <td>${kh.dqd_name}</td>
                <td>${kh.dqd_sdt}</td>
                <td>${kh.dqd_email}</td>
                <td>${kh.dqd_diaChi}</td>
                <td>
                    <!-- Nút Sửa -->
                    <a href="${pageContext.request.contextPath}/khachhang/edit/${kh.id}">
                        <button class="edit">Sửa</button>
                    </a>

                    <!-- Nút Xóa với xác nhận -->
                    <button class="delete" onclick="confirmDelete(${kh.id})">Xóa</button>
                </td>
            </tr>
        </c:forEach>
    </table>
<a href="/SpringMVCPagination/home">Về Trang Chủ</a></body>
</html>
