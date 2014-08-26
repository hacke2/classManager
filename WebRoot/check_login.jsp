<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
String id = (String)session.getAttribute("teacher");
if (null==id || id.equals("")) {
    out.print("<script language='javascript'>alert('请先登录系统！');window.location = 'index.jsp';</script>");
    
}
%>
