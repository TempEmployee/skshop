package com.sk.control;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sk.pojo.Ordes;
import com.sk.pojo.Product;
import com.sk.service.LoginService;
import com.sk.tool.Tools;

public class LoginServlet extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		this.doPost(request, response);
		 	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String flag=request.getParameter("flag");
		if(flag.equals("login")){
		 String u=request.getParameter("uname");
		 String p=request.getParameter("upwd");
		 LoginService use=new LoginService();
		 boolean b=use.checkUser(u, p);
		 if(b){
			 LoginService ls=new LoginService();
			 ArrayList al=ls.getIndexProduct();
			 request.setAttribute("result",al);
			 request.getSession().setAttribute("uname", u);
			 request.getSession().setAttribute("upwd", p);
			 request.getRequestDispatcher("index.jsp").forward(request, response);
		 }else{
			 String type="�û����������������µ��룬лл��";
			 request.getSession().setAttribute("type",type );
			 request.getRequestDispatcher("login.jsp").forward(request, response);
		 }
	}else if(flag.equals("product")){
		 int id=Integer.parseInt(request.getParameter("pid"));
		 LoginService ls=new LoginService();
		 ArrayList al=ls.getSeeProduct(id);
		 request.setAttribute("result",al);
		 request.getRequestDispatcher("product.jsp").forward(request, response);
	}else if(flag.equals("addorder")){
		String uname=Tools.getNewString(request.getParameter("uname"));
		String oname=Tools.getNewString(request.getParameter("oname"));
		String oaddress=Tools.getNewString(request.getParameter("oaddress"));
		String otel=Tools.getNewString(request.getParameter("otel"));
		int pid=Integer.parseInt(request.getParameter("pid"));
		float oprice=Float.parseFloat(request.getParameter("oprice"));
		 

		 LoginService ls=new LoginService();
		 if(ls.addOrders(uname, oname, oaddress, otel, pid, oprice)){
			 ArrayList al=ls.getorder(uname);
			 request.setAttribute("order",al);
			 request.getRequestDispatcher("order.jsp").forward(request, response);
		 }else{
			 request.getRequestDispatcher("err.jsp").forward(request, response);
		 }
		
	}else if(flag.equals("seegoods")){
		 int id=Integer.parseInt(request.getParameter("pid"));
		 LoginService ls=new LoginService();
		Product pt=ls.getSeeGoods(id);
		 request.setAttribute("result",pt);
		 request.getRequestDispatcher("seegoods.jsp").forward(request, response);
	}else if(flag.equals("")){
	}else if(flag.equals("seeorder")){
		String uname=Tools.getNewString(request.getParameter("uname"));
		 LoginService ls=new LoginService();
		 ArrayList al=ls.getorder(uname);
		 request.setAttribute("order",al);
		 request.getRequestDispatcher("order.jsp").forward(request, response);
		
	}else if(flag.equals("")){
		
	}else if(flag.equals("")){
		
	}else if(flag.equals("")){
		
	}
		}


}
