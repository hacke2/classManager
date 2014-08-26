<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="check_login.jsp"%>
<%
String cid = (String)request.getParameter("cid");
String tid = (String)request.getParameter("tid");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/classmanage";
Connection conn = DriverManager.getConnection(url,"root","root");
String sql1 = "select * from studentinfo where cid=" + cid +" and tid=" + tid;
String sql2 = "select max(score),min(score),avg(score) from studentinfo where cid=" + cid +" and tid=" + tid;
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
<a href="addstudent.jsp?cid=<%=cid %>&tid=<%=tid %>">添加学生</a>
<a href="main.jsp">&nbsp;返回 </a>
	<table align="center">
		
			<tr>
			<td>学生学号</td>
			<td>学生姓名</td>
			<td>考试成绩</td>
			<td>操作</td>
		</tr>
			<%while(rs1.next()) {%>
			
			<tr align="center">
				<td align="center"><%=rs1.getInt("sid") %></td>
				<td><%=rs1.getString("sname") %></td>
				<td><%=rs1.getInt("score") %></td>
				<td><a href="delstudent.jsp?id=<%=rs1.getInt("id") %>&cid=<%=cid %>&tid=<%=tid %>">删除</a></td>
			</tr>
			<%
			}
			rs1.close();
			ResultSet rs2 = stmt.executeQuery(sql2);
			%>
			<tr>
			<%while(rs2.next()) {%>
				<td>分数统计</td>
				<td>最高成绩</td>
				<td>最低成绩</td>
				<td>平均成绩</td>
			</tr>
			<tr>
				<td></td>
				<td><%=rs2.getInt(1) %></td>
				<td><%=rs2.getInt(2) %></td>
				<td><%=rs2.getInt(3) %></td>
			</tr>
			<%
			}
			rs2.close();
			stmt.close();
			conn.close();
			%>
	</table>
	
</body>
</html>