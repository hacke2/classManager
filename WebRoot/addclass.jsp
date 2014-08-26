<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="check_login.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>

		<form action="addclass_post.jsp" method="post">
			<table border="1">
				<tr>
					<td>
						课程名称
					</td>
					<td>
						<input type="text" name="cname" />
					</td>
				</tr>
				<tr>
					<td>
						上课时间
					</td>
					<td>
						<input type="text" name="ctime" />
					</td>
				</tr>
				<tr>
					<td>
						考试类型
					</td>
					<td>
						<select name="testtype"">
							<option value="考试">
								考试
							</option>
							<option value="考查">
								考查
							</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="提交" />
					</td>
					<td>
						<a href="main.jsp">返回</a>
					</td>
				</tr>

			</table>
		</form>


	</body>
</html>