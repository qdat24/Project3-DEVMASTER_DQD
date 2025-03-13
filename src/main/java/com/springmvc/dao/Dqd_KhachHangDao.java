package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.springmvc.beans.Dqd_khachhang;

@Repository
public class Dqd_KhachHangDao {
    @Autowired
    @Qualifier("jt") // Chỉ định bean đúng
    private JdbcTemplate template;

    // Thêm khách hàng
    public int save(Dqd_khachhang t) {
        String sql = "INSERT INTO dqd_khachhang (dqd_name, dqd_sdt, dqd_email, dqd_diachi) VALUES (?, ?, ?, ?)";
        return template.update(sql, t.getDqd_name(), t.getDqd_sdt(), t.getDqd_email(), t.getDqd_diaChi());
    }

    // Cập nhật thông tin khách hàng
    public int update(Dqd_khachhang t) {
        String sql = "UPDATE dqd_khachhang SET dqd_name = ?, dqd_sdt = ?, dqd_email = ?, dqd_diachi = ? WHERE id = ?";
        return template.update(sql, t.getDqd_name(), t.getDqd_sdt(), t.getDqd_email(), t.getDqd_diaChi(), t.getId());
    }

    // Xóa khách hàng theo ID
    public int delete(int id) {
        String sql = "DELETE FROM dqd_khachhang WHERE id = ?";
        return template.update(sql, id);
    }

    // Lấy một khách hàng theo ID (bắt lỗi nếu không tìm thấy)
    public Dqd_khachhang getKhachHangById(int id) {
        String sql = "SELECT * FROM dqd_khachhang WHERE id = ?";
        try {
            return template.queryForObject(sql, new Object[]{id}, 
                new BeanPropertyRowMapper<>(Dqd_khachhang.class));
        } catch (EmptyResultDataAccessException e) {
            return null; // Trả về null nếu không tìm thấy khách hàng
        }
    }

    // Lấy danh sách tất cả khách hàng
    public List<Dqd_khachhang> getAllKhachhang() {
        String sql = "SELECT * FROM dqd_khachhang";
        return template.query(sql, new RowMapper<Dqd_khachhang>() {
            public Dqd_khachhang mapRow(ResultSet rs, int row) throws SQLException {
                Dqd_khachhang t = new Dqd_khachhang();
                t.setId(rs.getInt("id"));
                t.setDqd_name(rs.getString("dqd_name"));
                t.setDqd_sdt(rs.getString("dqd_sdt"));
                t.setDqd_email(rs.getString("dqd_email"));
                t.setDqd_diaChi(rs.getString("dqd_diachi"));
                return t;
            }
        });
    }
}
