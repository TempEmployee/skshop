package com.sk.service;

import java.util.HashMap;

public class GoodsService {
	HashMap hm=new HashMap();
	public void addGoods(String gid, String gnum){
		hm.put(gid, gnum);
		
	}
	public void addGoods(String gid){
		hm.remove(gid);
		
	}
	
	public void claer(){
		hm.clear();
	}
	
	public void upGoods(String gid, String newnum){
		hm.put(gid, newnum);
		
	}	

}
