<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Đăng ký Admin</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');
        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://cdn.nhathuoclongchau.com.vn/unsafe/640x0/filters:quality(90)/https://cms-prod.s3-sgn09.fptcloud.com/destop_mobile_health_insight_page_46ec0205ad.jpg') no-repeat center center/cover;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5);
        }
        .login-container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 380px;
        }
        h2 {
            color: #333;
            margin-bottom: 25px;
            font-size: 24px;
            font-weight: 600;
        }
        label {
            display: block;
            text-align: left;
            font-weight: 600;
            margin-top: 12px;
            color: #555;
        }
        input {
            width: 100%;
            padding: 12px;
            margin-top: 6px;
            border: 1px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 14px;
        }
        button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            font-size: 16px;
            font-weight: 600;
            transition: background 0.3s ease;
            margin-top: 18px;
        }
        button:hover {
            background: linear-gradient(to right, #ff3d00, #ff1e56);
        }
        .error-message {
            color: red;
            margin-top: 12px;
            font-size: 14px;
        }
        p {
            margin-top: 18px;
            font-size: 14px;
        }
        a {
            color: #ff416c;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            color: #d41a4a;
        }
    </style>
</head>
<body>
    <div class="overlay"></div>
    <div class="login-container">
        <h2>Đăng ký Admin</h2>
        <%-- Hiển thị lỗi nếu có --%>
        <c:if test="${not empty error}">
            <p class="error-message">${error}</p>
        </c:if>
        <form action="register" method="post">
            <label for="dqd_TaiKhoan">Tài khoản:</label>
            <input type="text" id="dqd_TaiKhoan" name="dqd_TaiKhoan" required>
            
            <label for="dqd_MatKhau">Mật khẩu:</label>
            <input type="password" id="dqd_MatKhau" name="dqd_MatKhau" required>
            
            <button type="submit">Đăng ký</button>
        </form>
        <p>Đã có tài khoản? <a href="login">Đăng nhập</a></p>
<div class="footer">
        &copy; 2025 Web quản lý Hiệu thuốc tư nhân - Đinh Quốc Đạt
        <a href="/SpringMVCPagination/home">Về Trang Chủ</a>        </div>
    </div></body>
</html>