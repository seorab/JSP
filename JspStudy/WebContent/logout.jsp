<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	session.removeAttribute("login_id"); // 지정 내용 삭제
	session.invalidate(); // 전체 내용 삭제
	response.sendRedirect("login.jsp");
%>