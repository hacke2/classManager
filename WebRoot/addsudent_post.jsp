<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("UTF-8");
String cid = (String)request.getParameter("cid");
String tid = (String)request.getParameter("tid");
String sid = (String)request.getParameter("sid");
String sname = (String)request.getParameter("sname");
String score = (String)request.getParameter("score");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/classmanage";
Connection conn = DriverManager.getConnection(url,"root","root");
String sql = "insert into studentinfo(cid,tid,sid,sname,score) values("+ cid +","+tid+"," + sid + ",'"+sname+"',"+score+")";
Statement stmt = conn.createStatement();
stmt.execute(sql);	
stmt.close();
conn.close();
response.sendRedirect("getclass.jsp?cid="+cid+"&tid="+tid); 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>