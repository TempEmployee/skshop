<%@ page language="java" import="java.util.*,com.sk.pojo.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
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
    <table width="98%" align="center" border="0" cellpadding="3" cellspacing="1" style="margin-bottom:6px">
 <tr>
	   <td colspan="3" class='title'><span><p><font color="#8794C7">&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;<a href="LoginServlet?flag=seeorder&uname=<%=(String)session.getAttribute("uname") %>">订单详情</a>   &nbsp;&nbsp;&nbsp; 欢迎您，<%=(String)session.getAttribute("uname") %></p></font></span></td>
 </tr>
 </table>
 <center>
  <%
    ArrayList al=(ArrayList)request.getAttribute("result");
  %>
 <table width="60%" border="1">
   <tr><td width="20%" >商品号</td><td>商品名称</td><td>价格</td></tr>
    <%
		         for(int i=0;i<al.size();i++){
		         Product db=(Product)al.get(i);
		         %>
   <tr><td><%=db.getPid() %></td><td><a href="LoginServlet?flag=product&pid=<%=db.getPid() %>"><%=db.getPname() %></a></td><td><%=db.getPprice() %></td> </tr>
   <%} %>
 </table></center>
  </body>
</html>
