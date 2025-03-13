<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Danh sách Admin</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 20px;
	text-align: center;
}

.container {
	max-width: 900px;
	margin: 0 auto;
	background: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

h2 {
	color: #333;
}

a {
	text-decoration: none;
	color: #007bff;
	font-weight: bold;
}

a:hover {
	color: #0056b3;
}

.button {
	padding: 10px 15px;
	background: #28a745;
	color: white;
	border-radius: 5px;
	text-decoration: none;
	transition: background 0.3s;
}

.button:hover {
	background: #218838;
}

table {
	width: 100%;
	margin-top: 20px;
	border-collapse: collapse;
	background: white;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
	border-radius: 8px;
	overflow: hidden;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 10px;
	text-align: center;
}

th {
	background-color: #007bff;
	color: white;
	text-transform: uppercase;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

tr:hover {
	background-color: #ddd;
}

.action-links a {
	padding: 5px 10px;
	background-color: #007bff;
	color: white;
	border-radius: 5px;
	display: inline-block;
	transition: background 0.3s ease;
}

.action-links a:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<div class="container">
		<h2>Danh sách Admin</h2>
		<p>
			<a href="add" class="button">Thêm Admin mới</a> | <a href="logout"
				class="button" style="background: #dc3545;">Đăng xuất</a> 
				
				<a href="<c:url value='/' />">Về Trang Chủ</a>

		</p>
		<table>
			<tr>
				<th>ID</th>
				<th>Tài khoản</th>
				<th>Trạng thái</th>
				<th>Hành động</th>
			</tr>
			<c:forEach var="admin" items="${list}">
				<tr>
					<td>${admin.id}</td>
					<td>${admin.dqd_TaiKhoan}</td>
					<td>${admin.dqd_TrangThai ? "Hoạt động" : "Khóa"}</td>
					<td class="action-links"><a href="edit/${admin.id}">Đổi
						mật khẩu</a> <a href="delete/${admin.id}"
						onclick="return confirm('Bạn có chắc chắn muốn xóa?')">Xóa</a></td>
				</tr>
			</c:forEach>
		</table>
<div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
    </div></body>
</html>