<%@ page language="java" import="java.util.*,com.sk.tool.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'address.jsp' starting page</title>
    
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
					<td height="14" colspan="4" background="<%=path %>/images/tbg.gif">&nbsp;购物车情况&nbsp;</td>
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
				 
				 

			</table>
			
	    <table width="80%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
	    <form action="LoginServlet?flag=addorder" name="formAdd" method="post">
		<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>收货地址</span></td>
					    </tr>
					     
					    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						       用户名：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						    <input type="text" name="uname" value="<%=(String)session.getAttribute("uname") %>"/>
						    </td>
						</tr>
					    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						       姓名：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						    <input type="text" name="oname" value="zhangli"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						        地址：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						       <input type="text" name="oaddress" value="sdkjdx"/>           
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						       电话：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						      <input type="text" name="otel" value="18396827901"/>	
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="15%" bgcolor="#FFFFFF" align="right">
						       物品编号：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						    <input type="text" name="pid" value="<%=request.getParameter("pid") %>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="20%" bgcolor="#FFFFFF" align="right">
						       总价：
						    </td>
						    <td width="85%" bgcolor="#FFFFFF" align="left">
						    <input type="text" name="oprice" value="<%=request.getParameter("pprice") %>" readonly="readonly"/>
						    </td>
						</tr>
						<tr bgcolor="#FFFFFF"><td><input type="submit" value="生成订单"></td><td></td></tr>
							</form>
					 </table>
		
  </body>
</html>
