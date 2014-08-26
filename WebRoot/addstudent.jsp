<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String cid = (String)request.getParameter("cid");
String tid = (String)request.getParameter("tid");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	添加学生信息
	<form action="addsudent_post.jsp" method="post">
		<input type="hidden" name="cid" value ="<%=cid %>"/>
		<input type="hidden" name="tid" value ="<%=tid %>"/>
		学号：<input type="text" name="sid"/><br/>
		姓名：<input type="text" name="sname"/><br/>
		分数：<input type="text" name="score"/><br/>
		<input type="submit" value="提交"/>

	</form>
	<a href="getclass.jsp?tid=<%=tid %>&cid=<%=cid %>">返回</a>
</body>
</html>