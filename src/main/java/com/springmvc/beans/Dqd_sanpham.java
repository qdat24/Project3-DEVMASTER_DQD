package com.springmvc.beans;

public class Dqd_sanpham {
	 private int id;
	    private String dqd_name;
	    private int dqd_gia;
	    private int dqd_soluong;
	    private String dqd_hinhanh;
	    
		/**
		 * @param id
		 * @param dqd_name
		 * @param dqd_gia
		 * @param dqd_soluong
		 * @param dqd_hinhanh
		 */
		public Dqd_sanpham(int id, String dqd_name, int dqd_gia, int dqd_soluong, String dqd_hinhanh) {
			super();
			this.id = id;
			this.dqd_name = dqd_name;
			this.dqd_gia = dqd_gia;
			this.dqd_soluong = dqd_soluong;
			this.dqd_hinhanh = dqd_hinhanh;
		}
		
		/**
		 * 
		 */
		public Dqd_sanpham() {
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
		 * @return the dqd_gia
		 */
		public int getDqd_gia() {
			return dqd_gia;
		}
		/**
		 * @param dqd_gia the dqd_gia to set
		 */
		public void setDqd_gia(int dqd_gia) {
			this.dqd_gia = dqd_gia;
		}
		/**
		 * @return the dqd_soluong
		 */
		public int getDqd_soluong() {
			return dqd_soluong;
		}
		/**
		 * @param dqd_soluong the dqd_soluong to set
		 */
		public void setDqd_soluong(int dqd_soluong) {
			this.dqd_soluong = dqd_soluong;
		}
		/**
		 * @return the dqd_hinhanh
		 */
		public String getDqd_hinhanh() {
			return dqd_hinhanh;
		}
		/**
		 * @param dqd_hinhanh the dqd_hinhanh to set
		 */
		public void setDqd_hinhanh(String dqd_hinhanh) {
			this.dqd_hinhanh = dqd_hinhanh;
		}
	    
}
