<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String loginId = (String) session.getAttribute("login_id");
	if(loginId == null) {
%>    
<form method="post" action="login_proc.jsp">
	ID : <input type="text" name="user_id">
	<br>
	PW : <input type="password" name="user_pw">
	<br>
	<input type="submit" value="로그인 버튼">
</form>

<%
	} else {
		out.println("이미 로그인되어 있습니다.");
	}
%>




