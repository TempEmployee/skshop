package com.sk.pojo;

public class Goods {
	private int gid;
	public Goods() {
		super();
	}
	private String uname;
	private int pid;
	private float gsum;
	private int gnum;
	public Goods(int gid, String uname, int pid, float gsum, int gnum) {
		super();
		this.gid = gid;
		this.uname = uname;
		this.pid = pid;
		this.gsum = gsum;
		this.gnum = gnum;
	}
	

	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getUid() {
		return uname;
	}
	public void setUid(String uid) {
		this.uname = uname;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public float getGsum() {
		return gsum;
	}
	public void setGsum(float gsum) {
		this.gsum = gsum;
	}
	public int getGnum() {
		return gnum;
	}
	public void setGnum(int gnum) {
		this.gnum = gnum;
	}
	
}
