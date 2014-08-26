<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="check" class="check.CheckLogin"/>

<%    
String tid = request.getParameter("id");
String tpwd=request.getParameter("pwd");
String loginMsg = check.checklogin(tid,tpwd);
if(loginMsg.equals("SUCCESS_LOGIN")) {	    
	session.setAttribute("teacher",tid);
	response.sendRedirect("main.jsp");      
}
else if(loginMsg.equals("WRONG_PASSWORD")) {
	out.println("你输入的教师号或密码错误，请检正后重新输入");
}
else if(loginMsg.equals("NONE_USER")) {
	out.println("教师号不存在！！！ ");
}    
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