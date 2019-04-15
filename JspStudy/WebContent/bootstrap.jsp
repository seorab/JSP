<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<%
	List<String> list = new ArrayList<String>();
	list.add("Java");
	list.add("JSP");
	list.add("MySQL");
%>

<div class="dropdown">
	<button class="btn btn-primary dropdown-toggle" type="button"
		data-toggle="dropdown">
		Dropdown Example <span class="caret"></span>
	</button>
	<ul class="dropdown-menu">
		<%
			File file = new File("C:\\Windows\\System32\\drivers\\etc");
			File[] files = file.listFiles();
			for (int i = 0; i < files.length; i++) {
				long fileSize = files[i].length();
				if (fileSize < 1000) { // 파일크기가 1000Byte 미만이면 아래 코드 무시
// 					continue;
				}
				out.println("<li><a href='#'>" + files[i].getName() + "</a></li>");
			}

			//   		for(int i = 0; i < list.size(); i++) {
			// 			out.println("<li><a href='#'>" + list.get(i) + "</a></li>");
			//   		}
			//     <li><a href="#">HTML</a></li>
			//     <li><a href="#">CSS</a></li>
			//     <li><a href="#">JavaScript</a></li>
		%>
		<!-- Shift + Ctrl + C : 주석처리 -->
	</ul>
</div>









