<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!
	public String method() {
		return "메소드실행";
	}
%>
<%
	// 스크립틀릿 Scriptlet
	String n = method();
	out.print(n);
	String name = "";
	name = "JSP";
	out.println(name);
%>
<br>
	<%=name%>








