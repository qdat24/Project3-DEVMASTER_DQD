<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm Khách Hàng</title>
    
    <style>
  body {
  font-family: 'Roboto', Arial, sans-serif;
  background-color: #f7f9fc;
  margin: 0;
  padding: 20px;
  text-align: center;
  color: #333;
}

h2 {
  color: #2c3e50;
  margin-bottom: 30px;
  font-weight: 600;
}

form {
  background: white;
  padding: 30px;
  max-width: 500px;
  width: 90%;
  margin: 0 auto 40px;
  border-radius: 10px;
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.08);
  text-align: left;
}

label {
  font-weight: 500;
  display: block;
  margin: 15px 0 8px;
  color: #555;
  font-size: 15px;
}

input[type="text"],
input[type="email"] {
  width: 100%;
  padding: 12px;
  margin-bottom: 20px;
  border: 1px solid #e1e1e1;
  border-radius: 6px;
  font-size: 15px;
  transition: border-color 0.3s, box-shadow 0.3s;
  box-sizing: border-box;
}

input[type="text"]:focus,
input[type="email"]:focus {
  border-color: #4a90e2;
  box-shadow: 0 0 0 3px rgba(74, 144, 226, 0.1);
  outline: none;
}

input[type="submit"] {
  background-color: #2ecc71;
  color: white;
  padding: 14px 20px;
  border: none;
  cursor: pointer;
  border-radius: 6px;
  font-size: 16px;
  width: 100%;
  font-weight: 500;
  transition: background-color 0.3s;
  margin-top: 10px;
}

input[type="submit"]:hover {
  background-color: #27ae60;
}

a {
  display: block;
  text-align: center;
  margin-top: 15px;
  text-decoration: none;
  color: #e74c3c;
  font-size: 15px;
  font-weight: 500;
  transition: color 0.3s;
}

a:hover {
  color: #c0392b;
  text-decoration: none;
}

/* Add responsive adjustments */
@media (max-width: 600px) {
  form {
    width: 95%;
    padding: 20px;
  }
}
    </style>
</head>
<body>
    <h2>Thêm Khách Hàng</h2>
    <form action="save" method="post">
        <label>Tên:</label>
        <input type="text" name="dqd_name" required>
        
        <label>Số điện thoại:</label>
        <input type="text" name="dqd_sdt" required>
        
        <label>Email:</label>
        <input type="email" name="dqd_email" required>
        
        <label>Địa chỉ:</label>
        <input type="text" name="dqd_diaChi" required>
        
        <input type="submit" value="Lưu">
        <a href="list">Hủy</a>
    </form>
</body>
</html>