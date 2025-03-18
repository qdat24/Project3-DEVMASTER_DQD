<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa Admin</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');
       @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

body {
  font-family: 'Poppins', sans-serif;
  background: url('https://source.unsplash.com/1600x900/?pharmacy,medicine') no-repeat center center/cover;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  color: #333;
}

.overlay {
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.6);
  backdrop-filter: blur(3px);
}

.edit-container {
  position: relative;
  z-index: 1;
  background: rgba(255, 255, 255, 0.97);
  padding: 40px;
  border-radius: 16px;
  box-shadow: 0 10px 30px rgba(0, 0, 0, 0.25);
  text-align: center;
  width: 420px;
  max-width: 90%;
  transition: all 0.3s ease;
}

h2 {
  color: #2c3e50;
  margin-bottom: 25px;
  font-size: 26px;
  font-weight: 600;
  position: relative;
  padding-bottom: 12px;
}

h2::after {
  content: '';
  position: absolute;
  bottom: 0;
  left: 50%;
  transform: translateX(-50%);
  width: 60px;
  height: 3px;
  background: linear-gradient(to right, #3498db, #2980b9);
  border-radius: 3px;
}

label {
  display: block;
  text-align: left;
  font-weight: 500;
  margin-top: 16px;
  margin-bottom: 6px;
  color: #444;
  font-size: 15px;
}

input, select {
  width: 100%;
  padding: 12px 15px;
  margin-top: 6px;
  border: 1px solid #ddd;
  border-radius: 8px;
  box-sizing: border-box;
  font-size: 15px;
  transition: all 0.3s;
  background-color: #f9f9f9;
  font-family: 'Poppins', sans-serif;
}

input:focus, select:focus {
  outline: none;
  border-color: #3498db;
  box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.2);
  background-color: #fff;
}

button {
  width: 100%;
  padding: 14px;
  background: linear-gradient(to right, #3498db, #2980b9);
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-size: 16px;
  font-weight: 600;
  letter-spacing: 0.5px;
  transition: all 0.3s ease;
  margin-top: 25px;
  box-shadow: 0 4px 10px rgba(52, 152, 219, 0.3);
}

button:hover {
  background: linear-gradient(to right, #2980b9, #1c638d);
  transform: translateY(-2px);
  box-shadow: 0 6px 15px rgba(52, 152, 219, 0.4);
}

button:active {
  transform: translateY(0);
}

p {
  margin-top: 22px;
  font-size: 15px;
}

a {
  color: #3498db;
  text-decoration: none;
  font-weight: 500;
  transition: color 0.2s;
  position: relative;
}

a:hover {
  color: #2980b9;
}

a::after {
  content: '';
  position: absolute;
  width: 0;
  height: 2px;
  bottom: -2px;
  left: 0;
  background-color: #2980b9;
  transition: width 0.3s;
}

a:hover::after {
  width: 100%;
}

.footer {
  margin-top: 25px;
  font-size: 13px;
  color: #666;
  font-weight: 300;
}

@media (max-width: 480px) {
  .edit-container {
    padding: 30px 20px;
  }
  
  h2 {
    font-size: 22px;
  }
  
  button {
    padding: 12px;
  }
}
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="edit-container">
        <h2>Đổi mật khẩu</h2>
        <form action="../update" method="post">
            <input type="hidden" name="id" value="${admin.id}">
            <label for="dqd_TaiKhoan">Tài khoản:</label>
            <input type="text" id="dqd_TaiKhoan" name="dqd_TaiKhoan" value="${admin.dqd_TaiKhoan}" required>
            <label for="dqd_MatKhau">Mật khẩu mới:</label>
            <input type="password" id="dqd_MatKhau" name="dqd_MatKhau">
            <label for="dqd_TrangThai">Trạng thái:</label>
            <select id="dqd_TrangThai" name="dqd_TrangThai">
                <option value="true" ${admin.dqd_TrangThai ? "selected" : ""}>Hoạt động</option>
                <option value="false" ${!admin.dqd_TrangThai ? "selected" : ""}>Khóa</option>
            </select>
            <button type="submit">Cập nhật</button>
        </form>
        <p><a href="../list">Quay lại danh sách</a></p>
<div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
    </div></body>
</html>
