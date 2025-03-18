<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Admin</title>
    <style>
      @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

body {
  font-family: 'Poppins', sans-serif;
  background-color: #f8f9fa;
  margin: 0;
  padding: 30px 20px;
  text-align: center;
  color: #333;
  min-height: 100vh;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
}

.container {
  max-width: 450px;
  width: 100%;
  margin: 0 auto;
  background: white;
  padding: 35px 30px;
  border-radius: 12px;
  box-shadow: 0 8px 20px rgba(0, 0, 0, 0.08);
  text-align: left;
}

h2 {
  color: #2c3e50;
  text-align: center;
  margin-bottom: 25px;
  font-size: 24px;
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
  background: #3498db;
  border-radius: 3px;
}

label {
  display: block;
  margin: 16px 0 8px;
  font-weight: 500;
  color: #444;
  font-size: 15px;
}

input, select {
  width: 100%;
  padding: 12px 15px;
  margin-bottom: 5px;
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
  background: #3498db;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-size: 16px;
  font-weight: 600;
  transition: all 0.3s ease;
  margin-top: 25px;
  box-shadow: 0 4px 10px rgba(52, 152, 219, 0.2);
}

button:hover {
  background: #2980b9;
  transform: translateY(-2px);
  box-shadow: 0 6px 15px rgba(52, 152, 219, 0.3);
}

button:active {
  transform: translateY(0);
}

p {
  margin-top: 20px;
  text-align: center;
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
  text-align: center;
  font-weight: 300;
}

@media (max-width: 480px) {
  .container {
    padding: 25px 20px;
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
    <div class="container">
        <h2>Thêm Admin</h2>
        <form action="add" method="post">
            <label for="dqd_TaiKhoan">Tài khoản:</label>
            <input type="text" id="dqd_TaiKhoan" name="dqd_TaiKhoan" required>
            
            <label for="dqd_MatKhau">Mật khẩu:</label>
            <input type="password" id="dqd_MatKhau" name="dqd_MatKhau" required>
            
            <label for="dqd_TrangThai">Trạng thái:</label>
            <select id="dqd_TrangThai" name="dqd_TrangThai">
                <option value="true">Hoạt động</option>
                <option value="false">Khóa</option>
            </select>
            
            <button type="submit">Thêm</button>
        </form>
        <p><a href="list">Quay lại danh sách</a></p>
<div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
    </div></body>
</html>