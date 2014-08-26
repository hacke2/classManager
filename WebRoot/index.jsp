<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
<body>
	<form method="post">
		<div align="center">
			高校成绩管理系统
		</div>
		<table border="1" align="center">
			<tr>
				<td>
					id:
					<input type="text" name="id" />
				</td>
			</tr>
			<tr>
				<td>
					password:
					<input type="password" name="pwd" />
				</td>
			</tr>
			<tr>
				<td>
					<input type="button" value="教师登录" onclick="this.form.action='tlogin_post.jsp';this.form.submit()">
					<input type="button" value="学生登录" onclick="this.form.action='#';this.form.submit()">
					<input type="button" value="管理员登录" onclick="this.form.action='#';this.form.submit()">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>