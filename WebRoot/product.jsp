<%@ page language="java" import="java.util.*,com.sk.pojo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'product.jsp' starting page</title>
    
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
   <table width="98%" align="center" border="0" cellpadding="3" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:6px">
 <tr bgcolor="#D9EDF7">
	   <td colspan="3" class='title'><span><p><font color="#8794C7">首页 &nbsp;&nbsp;&nbsp;&nbsp;购物车&nbsp;&nbsp;&nbsp;订单详情&nbsp;&nbsp;&nbsp; 欢迎您，<%=(String)session.getAttribute("uname") %></p></font></span></td>
 </tr>
 </table>
 <%
    ArrayList al=(ArrayList)request.getAttribute("result");
  %>
  <%
		         for(int i=0;i<al.size();i++){
		         Product db=(Product)al.get(i);
		         %>
    <form action="Goods.do?flag=updategoods" name="formAdd" method="post">
	    <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
		<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>产品详情</span></td>
					    </tr>
					    <input type="hidden" name="id" readonly="readonly" value="<%=db.getPid() %>"/>
					     <input type="hidden" name="uname" readonly="readonly" value="<%=(String)session.getAttribute("uname") %>"/>
					    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						       产品名称:
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						     <%=db.getPname() %>
						    </td>
						</tr>
					    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						       产品价格:
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						     <%=db.getPprice() %>元
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        产品介绍:
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						                   这是一款非常好产品。
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        购买数量:
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						      	 <%=db.getPpnumber() %>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						      <a href="goods.jsp?pid=<%=db.getPid() %>&pname=<%=db.getPname() %>&pprice=<%=db.getPprice() %>&pnumber=<%=db.getPpnumber() %>">添加到购物车</a> 
						    </td>
						</tr>
					 </table>
			</form>
			<%} %>
  </body>
</html>
