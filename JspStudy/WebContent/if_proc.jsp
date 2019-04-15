<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String color = request.getParameter("color");
	out.println(color);
%>		
		<style>
			body {
				background: <%=color%>;
			}
		</style>
