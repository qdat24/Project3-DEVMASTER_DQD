package com.springmvc.beans;

public class Dqd_quantri {
	private int id;
	private String dqd_TaiKhoan;
	private String dqd_MatKhau;
	private boolean dqd_TrangThai;
	
	/**
	 * @param id
	 * @param dqd_TaiKhoan
	 * @param dqd_MatKhau
	 * @param dqd_TrangThai
	 */
	public Dqd_quantri(int id, String dqd_TaiKhoan, String dqd_MatKhau, boolean dqd_TrangThai) {
		super();
		this.id = id;
		this.dqd_TaiKhoan = dqd_TaiKhoan;
		this.dqd_MatKhau = dqd_MatKhau;
		this.dqd_TrangThai = dqd_TrangThai;
	}
	
	/**
	 * 
	 */
	public Dqd_quantri() {
		super();
	}

	/**
	 * 
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
	 * @return the dqd_TaiKhoan
	 */
	public String getDqd_TaiKhoan() {
		return dqd_TaiKhoan;
	}
	/**
	 * @param dqd_TaiKhoan the dqd_TaiKhoan to set
	 */
	public void setDqd_TaiKhoan(String dqd_TaiKhoan) {
		this.dqd_TaiKhoan = dqd_TaiKhoan;
	}
	/**
	 * @return the dqd_MatKhau
	 */
	public String getDqd_MatKhau() {
		return dqd_MatKhau;
	}
	/**
	 * @param dqd_MatKhau the dqd_MatKhau to set
	 */
	public void setDqd_MatKhau(String dqd_MatKhau) {
		this.dqd_MatKhau = dqd_MatKhau;
	}
	/**
	 * @return the dqd_TrangThai
	 */
	public boolean isDqd_TrangThai() {
		return dqd_TrangThai;
	}
	/**
	 * @param dqd_TrangThai the dqd_TrangThai to set
	 */
	public void setDqd_TrangThai(boolean dqd_TrangThai) {
		this.dqd_TrangThai = dqd_TrangThai;
	}
	
}
