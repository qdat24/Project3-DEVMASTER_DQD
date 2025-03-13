package com.springmvc.dao;

import com.springmvc.beans.Dqd_quantri;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class Dqd_quantridao {
    @Autowired
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm tài khoản admin mới (Đăng ký)
    public int save(Dqd_quantri p) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPassword = encoder.encode(p.getDqd_MatKhau()); // Băm mật khẩu

        String sql = "INSERT INTO DQD_quantri (dqd_TaiKhoan, dqd_MatKhau, dqd_TrangThai) VALUES (?, ?, ?)";
        return template.update(sql, p.getDqd_TaiKhoan(), hashedPassword, p.isDqd_TrangThai());
    }

    // Cập nhật thông tin admin
    public int update(Dqd_quantri p) {
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        String hashedPassword = encoder.encode(p.getDqd_MatKhau()); // Băm mật khẩu mới

        String sql = "UPDATE DQD_quantri SET dqd_TaiKhoan = ?, dqd_MatKhau = ?, dqd_TrangThai = ? WHERE id = ?";
        return template.update(sql, p.getDqd_TaiKhoan(), hashedPassword, p.isDqd_TrangThai(), p.getId());
    }

    // Xóa admin theo ID
    public int delete(int id) {
        String sql = "DELETE FROM DQD_quantri WHERE id = ?";
        return template.update(sql, id);
    }

    // Lấy thông tin admin theo ID
    public Dqd_quantri getEmpById(int id) {
        String sql = "SELECT * FROM DQD_quantri WHERE id = ?";
        try {
            return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(Dqd_quantri.class));
        } catch (EmptyResultDataAccessException e) {
            return null; // Không tìm thấy admin
        }
    }

    // Lấy danh sách tất cả admin
    public List<Dqd_quantri> getEmployees() {
        String sql = "SELECT * FROM DQD_quantri";
        return template.query(sql, new RowMapper<Dqd_quantri>() {
            public Dqd_quantri mapRow(ResultSet rs, int row) throws SQLException {
                Dqd_quantri e = new Dqd_quantri();
                e.setId(rs.getInt("id"));
                e.setDqd_TaiKhoan(rs.getString("dqd_TaiKhoan"));
                e.setDqd_MatKhau(rs.getString("dqd_MatKhau"));
                e.setDqd_TrangThai(rs.getBoolean("dqd_TrangThai"));
                return e;
            }
        });
    }

    // Đăng nhập admin (kiểm tra mật khẩu bằng BCrypt)
    public Dqd_quantri getAdminByUsernameAndPassword(String username, String password) {
        String sql = "SELECT * FROM DQD_quantri WHERE dqd_TaiKhoan = ?";
        try {
            Dqd_quantri admin = template.queryForObject(sql, new Object[]{username}, new BeanPropertyRowMapper<>(Dqd_quantri.class));

            // Kiểm tra mật khẩu đã băm
            BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
            if (admin != null && encoder.matches(password, admin.getDqd_MatKhau())) {
                return admin; // Đăng nhập thành công
            }
            return null; // Sai mật khẩu
        } catch (EmptyResultDataAccessException e) {
            return null; // Không tìm thấy tài khoản
        }
    }
}
