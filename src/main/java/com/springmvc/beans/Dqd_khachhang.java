package com.springmvc.beans;

import java.util.List;

public class Dqd_khachhang {
    private int id;
    private String dqd_name;
    private String dqd_sdt;
    private String dqd_email;
    private String dqd_diaChi;
    
    /**
     * @param id
     * @param dqd_name
     * @param dqd_sdt
     * @param dqd_email
     * @param dqd_diaChi
     */
    public Dqd_khachhang(int id, String dqd_name, String dqd_sdt, String dqd_email, String dqd_diaChi) {
        super();
        this.id = id;
        this.dqd_name = dqd_name;
        this.dqd_sdt = dqd_sdt;
        this.dqd_email = dqd_email;
        this.dqd_diaChi = dqd_diaChi;
    }
    
    /**
     * 
     */
    public Dqd_khachhang() {
        super();
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }
    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }
    /**
     * @return the dqd_name
     */
    public String getDqd_name() {
        return dqd_name;
    }
    /**
     * @param dqd_name the dqd_name to set
     */
    public void setDqd_name(String dqd_name) {
        this.dqd_name = dqd_name;
    }
    /**
     * @return the dqd_sdt
     */
    public String getDqd_sdt() {
        return dqd_sdt;
    }
    /**
     * @param dqd_sdt the dqd_sdt to set
     */
    public void setDqd_sdt(String dqd_sdt) {
        this.dqd_sdt = dqd_sdt;
    }
    /**
     * @return the dqd_email
     */
    public String getDqd_email() {
        return dqd_email;
    }
    /**
     * @param dqd_email the dqd_email to set
     */
    public void setDqd_email(String dqd_email) {
        this.dqd_email = dqd_email;
    }
    /**
     * @return the dqd_diaChi
     */
    public String getDqd_diaChi() {
        return dqd_diaChi;
    }
    /**
     * @param dqd_diaChi the dqd_diaChi to set
     */
    public void setDqd_diaChi(String dqd_diaChi) {
        this.dqd_diaChi = dqd_diaChi;
    }
}
