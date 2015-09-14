<%@ page language="java" import="java.util.*,com.sk.tool.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'goods.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <table width="80%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/images/tbg.gif">&nbsp;购物车&nbsp;</td>
				</tr>
				 
				<tr align="center" bgcolor="#FAFAF1" height="23">
				<td width="20%">编号</td>
					<td width="20%">产品名称</td>
					<td width="20%">产品价格</td>
					<td width="20%">产品数量</td>
		        </tr>	
		        <%
		    //     for(int i=0;i<al.size();i++){
		    //     Goods ep=(Goods)al.get(i);
		         %>
		        
				<tr > 
					<td bgcolor="#FFFFFF" align="center">
				    <%=request.getParameter("pid") %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
				    <%=Tools.getNewString(request.getParameter("pname")) %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					  <%=request.getParameter("pprice") %>元
					</td>
					<td bgcolor="#FFFFFF" align="center">
				     <%=request.getParameter("pnumber") %>
					</td>
					
					 
				</tr>
				 
				<tr bgcolor="#FFFFFF">
					<td height="14" colspan="2">&nbsp; <a href="address.jsp?pid=<%=request.getParameter("pid") %>&pname=<%=Tools.getNewString(request.getParameter("pname")) %>&pprice=<%=request.getParameter("pprice") %>&pnumber=<%=request.getParameter("pnumber") %>">确定购买</a>&nbsp;</td>
					<td height="14" colspan="2">&nbsp;<a href="LoginServlet?flag=product&pid=<%=request.getParameter("pid") %>">取消购买</a>&nbsp;</td>
				</tr>

			</table>
  </body>
</html>
