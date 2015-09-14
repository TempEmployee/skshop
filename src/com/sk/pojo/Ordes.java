package com.sk.pojo;

public class Ordes {
	private int oid;
	public Ordes() {
		super();
	}
	private String uname;
	private String oname;
	private String oaddress;
	private String otel;
	private int pid;
	private float oprice;
	private String ostate;
	public Ordes(int oid, String uname, String oname, String oaddress,
			String otel, int pid, float oprice, String ostate) {
		super();
		this.oid = oid;
		this.uname = uname;
		this.oname = oname;
		this.oaddress = oaddress;
		this.otel = otel;
		this.pid = pid;
		this.oprice = oprice;
		this.ostate = ostate;
	}
	

	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getOname() {
		return oname;
	}
	public void setOname(String oname) {
		this.oname = oname;
	}
	public String getOaddress() {
		return oaddress;
	}
	public void setOaddress(String oaddress) {
		this.oaddress = oaddress;
	}
	public String getOtel() {
		return otel;
	}
	public void setOtel(String otel) {
		this.otel = otel;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public float getOprice() {
		return oprice;
	}
	public void setOprice(float oprice) {
		this.oprice = oprice;
	}
	public String getOstate() {
		return ostate;
	}
	public void setOstate(String ostate) {
		this.ostate = ostate;
	}
	
}
