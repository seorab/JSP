<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String userId = request.getParameter("user_id");
	String userPw = request.getParameter("user_pw");
	
	if(userId.equals("ai") && userPw.equals("1234")) {
		out.print(userId + "님 반갑습니다.");
		session.setAttribute("login_id", userId);
	} else {
		out.print("아이디 또는 비밀번호가 맞지 않습니다.");
	}
%>