<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*,java.util.*" %>
<%@ include file="check_login.jsp"%>
<%
String tid = (String)session.getAttribute("teacher");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/classmanage";
Connection conn = DriverManager.getConnection(url,"root","root");
String sql1 = "select * from teacherinfo where id=" + tid;
String sql2 = "select * from classinfo where tid="+ tid;
Statement stmt = conn.createStatement();

ResultSet rs1 = stmt.executeQuery(sql1);



%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<%while(rs1.next()) { %>
	欢迎使用<p style="color:red"><%=rs1.getString("teachername") %> 老师</p>  所属学院：<%=rs1.getString("college") %>
	<a href="addclass.jsp">添加班级</a>
	<a href="logout.jsp">退出登录</a>
	  <%} %>
	<%
	rs1.close();
	ResultSet rs2 = stmt.executeQuery(sql2);
	
	%>
	</div>
	<table  border="1" align="center">
		<tr>
	   		<td>课程名称</td>
	    	<td>课程时间</td>
	    	<td>考查类型</td>
	    	<td>操作</td>
		</tr>
	<%while(rs2.next()) { %>

	  <tr>
	    <td><a href="getclass.jsp?cid=<%=rs2.getString("cid") %>&tid=<%=tid %>"><%=rs2.getString("coursename") %></a></td>
	    <td><%=rs2.getString("coursetime") %></td>
	    <td><%=rs2.getString("testtype") %></td>
	    <td><a href="delclass.jsp?cid=<%=rs2.getString("cid") %>&tid=<%=tid %>">删除</a></td>
	  </tr>
	  <%} %>
	  <%
	  rs2.close();
	  stmt.close();
	  conn.close();
	  %>
	</table>
</body>

</html>
