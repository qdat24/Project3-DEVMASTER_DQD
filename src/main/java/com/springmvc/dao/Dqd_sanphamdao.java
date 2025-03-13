package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.Dqd_sanpham;

public class Dqd_sanphamdao {
    JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

   
    public int save(Dqd_sanpham p) {
        String sql = "insert into dqd_sanpham (dqd_name,dqd_hinhanh, dqd_gia, dqd_soluong) values (?, ?, ?,?)";
        return template.update(sql, p.getDqd_name(), p.getDqd_hinhanh(), p.getDqd_gia(), p.getDqd_soluong());
    }

   
    public int update(Dqd_sanpham p) {
        String sql = "update dqd_sanpham set dqd_name = ?,dqd_hinhanh = ?, dqd_gia = ?, dqd_soluong = ? where id = ?";
        return template.update(sql, p.getDqd_name(), p.getDqd_hinhanh(), p.getDqd_gia(), p.getDqd_soluong(), p.getId());
    }

   
    public int delete(int id) {
        String sql = "delete from dqd_sanpham where id = ?";
        return template.update(sql, id);
    }
    public int deletegiohang(int id) {
        String sql = "delete from dqd_sanpham where id = ?";
        return template.update(sql, id);
    }

    
    public Dqd_sanpham getEmpById(int id) {
        String sql = "select * from dqd_sanpham where id = ?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Dqd_sanpham>(Dqd_sanpham.class));
    }

    
    public List<Dqd_sanpham> getEmployees() {
        String sql = "select * from dqd_sanpham";
        return template.query(sql, new RowMapper<Dqd_sanpham>() {
            public Dqd_sanpham mapRow(ResultSet rs, int row) throws SQLException {
                Dqd_sanpham e = new Dqd_sanpham();
                e.setId(rs.getInt("id"));
                e.setDqd_name(rs.getString("dqd_name"));
                e.setDqd_hinhanh(rs.getString("dqd_hinhanh"));
                e.setDqd_gia(rs.getInt("dqd_gia"));
                e.setDqd_soluong(rs.getInt("dqd_soluong"));
                return e;
            }
        });
    }
}