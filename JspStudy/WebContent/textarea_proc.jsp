<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("euc-kr");
	String content = request.getParameter("content");
	content = content.replace("\n", "<br>");
%>

<%=content%>
<textarea><%=content%></textarea>

