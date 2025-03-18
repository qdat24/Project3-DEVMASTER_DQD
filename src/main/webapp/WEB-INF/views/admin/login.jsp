<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng nhập</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap');

body {
  font-family: 'Poppins', sans-serif;
  background: url('https://cdn.nhathuoclongchau.com.vn/unsafe/640x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/destop_mobile_health_insight_page_46ec0205ad.jpg') no-repeat center center/cover;
  margin: 0;
  padding: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  position: relative;
}

body::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0, 0, 0, 0.4);
  backdrop-filter: blur(6px);
}

.login-container {
  position: relative;
  background: rgba(255, 255, 255, 0.95);
  padding: 40px;
  border-radius: 16px;
  box-shadow: 0 15px 35px rgba(0, 0, 0, 0.3);
  text-align: center;
  width: 380px;
  max-width: 90%;
  z-index: 10;
  transition: transform 0.3s, box-shadow 0.3s;
}

.login-container:hover {
  transform: translateY(-5px);
  box-shadow: 0 20px 40px rgba(0, 0, 0, 0.4);
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
  background: linear-gradient(to right, #4facfe, #00f2fe);
  border-radius: 3px;
}

label {
  display: block;
  text-align: left;
  font-weight: 500;
  margin-top: 15px;
  margin-bottom: 6px;
  color: #444;
  font-size: 15px;
}

input {
  width: 100%;
  padding: 14px 16px;
  margin-top: 6px;
  border: 1px solid #e0e0e0;
  border-radius: 8px;
  box-sizing: border-box;
  font-size: 15px;
  transition: all 0.3s;
  background-color: #f9f9f9;
  box-shadow: inset 0 1px 3px rgba(0, 0, 0, 0.05);
  font-family: 'Poppins', sans-serif;
}

input:focus {
  outline: none;
  border-color: #4facfe;
  box-shadow: 0 0 0 3px rgba(79, 172, 254, 0.2), inset 0 1px 3px rgba(0, 0, 0, 0.05);
  background-color: #fff;
}

button {
  width: 100%;
  padding: 14px;
  background: linear-gradient(to right, #4facfe, #00f2fe);
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-size: 16px;
  font-weight: 600;
  letter-spacing: 0.5px;
  transition: all 0.3s ease;
  margin-top: 25px;
  box-shadow: 0 4px 10px rgba(79, 172, 254, 0.3);
}

button:hover {
  background: linear-gradient(to right, #3a86ff, #00c6ff);
  transform: translateY(-2px);
  box-shadow: 0 6px 15px rgba(79, 172, 254, 0.4);
}

button:active {
  transform: translateY(0);
}

.error-message {
  color: #e74c3c;
  margin-top: 15px;
  font-size: 14px;
  background-color: rgba(231, 76, 60, 0.1);
  padding: 10px;
  border-radius: 6px;
  border-left: 3px solid #e74c3c;
  text-align: left;
}

p {
  margin-top: 22px;
  font-size: 15px;
  color: #555;
}

a {
  color: #3a86ff;
  text-decoration: none;
  font-weight: 500;
  transition: all 0.2s;
  position: relative;
}

a:hover {
  color: #0056b3;
}

a::after {
  content: '';
  position: absolute;
  width: 0;
  height: 2px;
  bottom: -2px;
  left: 0;
  background-color: #0056b3;
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

.button-container {
  display: flex;
  gap: 15px;
  margin-top: 25px;
}

.button-container button {
  margin-top: 0;
}

.home-button {
  background: linear-gradient(to right, #34d399, #10b981);
  width: 100%;
  padding: 14px;
  color: white;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  font-size: 16px;
  font-weight: 600;
  letter-spacing: 0.5px;
  transition: all 0.3s ease;
  box-shadow: 0 4px 10px rgba(16, 185, 129, 0.3);
  display: flex;
  justify-content: center;
  align-items: center;
  text-decoration: none;
}

.home-button:hover {
  background: linear-gradient(to right, #10b981, #059669);
  transform: translateY(-2px);
  box-shadow: 0 6px 15px rgba(16, 185, 129, 0.4);
}

.home-button:active {
  transform: translateY(0);
}

.home-icon {
  margin-right: 8px;
}

.links-container {
  display: flex;
  justify-content: space-between;
  margin-top: 22px;
}

@media (max-width: 480px) {
  .login-container {
    padding: 30px 20px;
  }
  
  h2 {
    font-size: 22px;
  }
  
  button, .home-button {
    padding: 12px;
  }
  
  .button-container {
    flex-direction: column;
  }
}
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Đăng nhập Admin</h2>
        <%-- Hiển thị lỗi nếu có --%>
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>
        <form action="login" method="post">
            <label for="username">Tài khoản:</label>
            <input type="text" id="username" name="username" required>
            
            <label for="password">Mật khẩu:</label>
            <input type="password" id="password" name="password" required>
            
            <div class="button-container">
                <button type="submit">Đăng nhập</button>
<a href="/SpringMVCPagination/home">Về Trang Chủ</a>
                
 <span class="home-icon">🏠</span> Trang chủ
</a>
            </div>
        </form>
        
        <div class="links-container">
            <p>Chưa có tài khoản? <a href="register">Đăng ký ngay</a></p>
        </div>
        
        <div class="footer">
            &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
        </div>
    </div>
</body>
</html>