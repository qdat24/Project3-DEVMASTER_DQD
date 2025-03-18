<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Danh sách Admin</title>
<style>
body {
body {
  font-family: 'Segoe UI', Roboto, Arial, sans-serif;
  background-color: #f8f9fa;
  margin: 0;
  padding: 20px;
  text-align: center;
  color: #333;
}

.container {
  max-width: 1000px;
  margin: 0 auto;
  background: white;
  padding: 30px;
  border-radius: 12px;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
}

h2 {
  color: #2c3e50;
  margin-bottom: 25px;
  font-weight: 600;
}

a {
  text-decoration: none;
  color: #007bff;
  font-weight: 500;
  transition: color 0.2s;
}

a:hover {
  color: #0056b3;
}

.button {
  display: inline-block;
  padding: 10px 18px;
  background: #28a745;
  color: white;
  border-radius: 6px;
  font-weight: 500;
  margin: 0 5px;
  transition: all 0.3s ease;
  border: none;
  cursor: pointer;
}

.button:hover {
  background: #218838;
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

.button.danger {
  background: #dc3545;
}

.button.danger:hover {
  background: #c82333;
}

.button.primary {
  background: #007bff;
}

.button.primary:hover {
  background: #0069d9;
}

table {
  width: 100%;
  margin-top: 30px;
  border-collapse: separate;
  border-spacing: 0;
  background: white;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.05);
  border-radius: 8px;
  overflow: hidden;
  margin-bottom: 25px;
}

th, td {
  padding: 15px;
  text-align: center;
  border: none;
  border-bottom: 1px solid #eee;
}

th {
  background-color: #4a6fa5;
  color: white;
  text-transform: uppercase;
  font-size: 14px;
  font-weight: 600;
  letter-spacing: 0.5px;
}

tr:last-child td {
  border-bottom: none;
}

tr:nth-child(even) {
  background-color: #f9f9f9;
}

tr:hover {
  background-color: #f2f6ff;
  transition: background-color 0.2s ease;
}

.action-links {
  display: flex;
  justify-content: center;
  gap: 10px;
}

.action-links a {
  padding: 6px 12px;
  background-color: #007bff;
  color: white;
  border-radius: 4px;
  font-size: 14px;
  transition: all 0.2s ease;
}

.action-links a:hover {
  background-color: #0056b3;
  transform: translateY(-2px);
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.action-links a:last-child {
  background-color: #dc3545;
}

.action-links a:last-child:hover {
  background-color: #c82333;
}

.home-link {
  display: block;
  margin: 15px 0;
  font-weight: 500;
}

.footer {
  margin-top: 30px;
  font-size: 14px;
  color: #6c757d;
}

@media (max-width: 768px) {
  .container {
    padding: 20px 15px;
  }
  
  table {
    font-size: 14px;
  }
  
  th, td {
    padding: 10px 8px;
  }
  
  .action-links {
    flex-direction: column;
    gap: 5px;
  }
  
  .action-links a {
    margin: 2px 0;
  }
}
</style>
</head>
<body>
	<div class="container">
		<h2>Danh sách Admin</h2>
		<p>
			<a href="add" class="button">Thêm Admin mới</a> | <a href="logout"
				class="button" style="background: #dc3545;">Đăng xuất</a> 
				
<a href="/SpringMVCPagination/home">Về Trang Chủ</a>        </div>
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