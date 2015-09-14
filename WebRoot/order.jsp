<%@ page language="java" import="java.util.*,com.sk.pojo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'order.jsp' starting page</title>
    
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
     
        <table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="7">&nbsp;订单详情&nbsp;</td>
				</tr>
				 
				<tr align="center" bgcolor="#FAFAF1" height="22">
				<td width="15%">订单号</td>
				<td width="15%">用户名</td>
					<td width="10%">姓名</td>
					<td width="15%">用户地址</td>
					<td width="12%">电话</td>
					<td width="8%">产品编号&查看</td>
					<td width="10%">产品总价</td>
					<td width="10%">是否付款</td>
					<td width="15%">操作</td>
		        </tr>	
		         <%
    ArrayList al=(ArrayList)request.getAttribute("order");
  %>
  <%
		         for(int i=0;i<al.size();i++){
		         Ordes or=(Ordes)al.get(i);
		         %>
		        
				<tr >
					<td bgcolor="#FFFFFF" align="center">
					 <%=or.getOid() %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					 <%=or.getUname() %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					 <%=or.getOname() %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
                      <%=or.getOaddress() %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
		             <%=or.getOtel() %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
		           	<a href="LoginServlet?flag=seegoods&pid=<%=or.getPid() %>"/><%=or.getPid() %></a>  
					</td>
					<td bgcolor="#FFFFFF" align="center">
		             <%=or.getOprice() %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					 <%=or.getOstate() %>
					</td>
					<td bgcolor="#FFFFFF" align="center">
				
					</td>
				</tr>
				<%} %>
				<tr bgcolor="#FAFAF1"><td><a href="pay.jsp"/>确认支付</a></td></tr>
			</table>
  </body>
</html>
