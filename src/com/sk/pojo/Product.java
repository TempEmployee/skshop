package com.sk.pojo;

public class Product {
	private int pid;
	public Product() {
		super();
	}
	private String pname;
	private float pprice;
	private int ppnumber;
	public Product(int pid, String pname, float pprice, int ppnumber) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.pprice = pprice;
		this.ppnumber = ppnumber;
	}
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public float getPprice() {
		return pprice;
	}
	public void setPprice(float pprice) {
		this.pprice = pprice;
	}
	public int getPpnumber() {
		return ppnumber;
	}
	public void setPpnumber(int ppnumber) {
		this.ppnumber = ppnumber;
	}
	

}
