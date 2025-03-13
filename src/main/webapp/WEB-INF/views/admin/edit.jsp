<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa Admin</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');
        body {
            font-family: 'Poppins', sans-serif;
            background: url('https://source.unsplash.com/1600x900/?technology,office') no-repeat center center/cover;
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
        .edit-container {
            position: relative;
            z-index: 1;
            background: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0px 5px 15px rgba(0, 0, 0, 0.3);
            text-align: center;
            width: 400px;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
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
        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 6px;
            border: 1px solid #ddd;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 14px;
        }
        button {
            width: 100%;
            padding: 12px;
            background: linear-gradient(to right, #007bff, #0056b3);
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
            background: linear-gradient(to right, #0056b3, #003580);
        }
        p {
            margin-top: 18px;
            font-size: 14px;
        }
        a {
            color: #007bff;
            text-decoration: none;
            font-weight: bold;
        }
        a:hover {
            color: #0056b3;
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
