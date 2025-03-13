package com.springmvc.beans;

public class Dqd_giohang {
    private int id;
    private String dqd_name;
    private String dqd_hinhanh;
    private int dqd_gia;
    private int dqd_soluong;

    // ✅ Constructor Mặc Định (Không Tham Số)
    public Dqd_giohang() {}

    // ✅ Constructor Đầy Đủ (Dùng để tạo giỏ hàng)
    public Dqd_giohang(int id, String dqd_name, String dqd_hinhanh, int dqd_gia, int dqd_soluong) {
        this.id = id;
        this.dqd_name = dqd_name;
        this.dqd_hinhanh = dqd_hinhanh;
        this.dqd_gia = dqd_gia;
        this.dqd_soluong = dqd_soluong;
    }

    // ✅ Getter và Setter
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }

    public String getDqd_name() { return dqd_name; }
    public void setDqd_name(String dqd_name) { this.dqd_name = dqd_name; }

    public String getDqd_hinhanh() { return dqd_hinhanh; }
    public void setDqd_hinhanh(String dqd_hinhanh) { this.dqd_hinhanh = dqd_hinhanh; }

    public int getDqd_gia() { return dqd_gia; }
    public void setDqd_gia(int dqd_gia) { this.dqd_gia = dqd_gia; }

    public int getDqd_soluong() { return dqd_soluong; }
    public void setDqd_soluong(int dqd_soluong) { this.dqd_soluong = dqd_soluong; }
}
