package com.sk.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.sk.pojo.Ordes;
import com.sk.pojo.Product;
import com.sk.pojo.User;

public class LoginService {
	private final static String  URL = "jdbc:mysql://localhost:3306/shopping";
	private final static String USERNAME = "root";
	private final static String PASSWORD = "123456";
	
	private Connection cn=null;
	private Statement st = null;
	private ResultSet rs = null;
	
	public void close(){
		try {
			if(rs!=null){
				rs.close();
				rs=null;
			}if(cn!=null){
				cn.close();
				cn=null;
			}if(st!=null){
				st.close();
				st=null;
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}
	public boolean  checkUser(String u,String p){
		boolean b=false;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			st = cn.createStatement();
			rs=st.executeQuery("select upwd from user where uname='"+u+"'");
			if(rs.next()){
				if(rs.getString(1).equals(p)){
					b=true;
				} 
			}		
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}	
		return b;
}
	 
	
	public ArrayList getIndexProduct(){
		ArrayList al=new ArrayList();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			st = cn.createStatement();
			rs=st.executeQuery(("select * from product"));
			while(rs.next()){	
				Product pt=new Product();
				pt.setPid(rs.getInt(1));
				pt.setPname(rs.getString(2));
				pt.setPprice(rs.getFloat(3));
				al.add(pt);		
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return al;
		
	}
	
	public ArrayList getSeeProduct(int id){
		ArrayList al=new ArrayList();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			st = cn.createStatement();
			rs=st.executeQuery(("select * from product where pid="+id+" "));
			while(rs.next()){	
				Product pt=new Product();
				pt.setPid(rs.getInt(1));
				pt.setPname(rs.getString(2));
				pt.setPprice(rs.getFloat(3));
				pt.setPpnumber(rs.getInt(4));
				al.add(pt);		
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return al;
		
	}
	public boolean addOrders(String uname,String oname,String oaddress,String otel,int pid,float oprice ){
		boolean b=false;
		try {
			String ostate="no";
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			st = cn.createStatement();
			int a=st.executeUpdate("insert into ordes values(NULL,'"+uname+"','"+oname+"','"+oaddress+"','"+otel+"',"+pid+","+oprice+",'"+ostate+"')");
			if(a==1){
				b=true;	
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		return b;
	}
	public ArrayList getorder(String uname){
		ArrayList al=new ArrayList();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			st = cn.createStatement();
			rs=st.executeQuery("select *from ordes where uname='"+uname+"'");
			while(rs.next()){	
				Ordes or=new Ordes();
				or.setOid(rs.getInt(1));
				or.setUname(rs.getString(2));
				or.setOname(rs.getString(3));
				or.setOaddress(rs.getString(4));
				or.setOtel(rs.getString(5));
				or.setPid(rs.getInt(6));
				or.setOprice(rs.getFloat(7));
				or.setOstate(rs.getString(8));
				al.add(or);	
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return al;
		
	}
	public Product getSeeGoods(int id){
		Product pt=new Product();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cn = DriverManager.getConnection(URL,USERNAME,PASSWORD);
			st = cn.createStatement();
			rs=st.executeQuery(("select * from product where pid="+id+" "));
				pt.setPid(rs.getInt(1));
				pt.setPname(rs.getString(2));
				pt.setPprice(rs.getFloat(3));
				pt.setPpnumber(rs.getInt(4));
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return pt;
		
	}


}
