<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	String color = request.getParameter("color");
	out.println(color);
	if(color.equals("blue")) {
%>		
		<style>
			body {
				background: blue;
			}
		</style>
<%		
	} else if(color.equals("red")) {
		%>		
		<style>
			body {
				background: red;
			}
		</style>
<%		

	}
%>