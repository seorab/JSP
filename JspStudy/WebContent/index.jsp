<%@page import="java.util.Collections"%>
<%@page import="java.util.Collection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.io.IOException"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <title>Web</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- Include jQuery Mobile stylesheets -->
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- Include the jQuery library -->
	<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
	<!-- Include the jQuery Mobile library -->
	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
<body>
	<div data-role="page" id="pageone">
		<div data-role="main" class="ui-content">
<h3>https://www.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyCLkoB0Bwiiem7_uVKZX9soG3IFJDqIMrw&q=원피스</h3>
<h3>https://www.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyAguR7EAV3Opynrl0VyW38dls-4YbRyKMs&q=원피스</h3>
<h3>https://www.googleapis.com/youtube/v3/search?part=snippet&key=AIzaSyCcfelKpw-A0LmWY3pHTVfdVHDUvCnTWlU&q=원피스</h3>


<h3>카카오 RestAPI Key : 0a7c5408897da72ef62213f279237f86</h3>
<h3><a href='https://github.com/seorab/JavaStudy'>Git Hub - Java</a></h3>
<h3><a href='https://github.com/seorab/JSP'>Git Hub - JSP</a></h3>
<h3><a href='https://drive.google.com/open?id=1gDmEaXJHcrJTjThWyQXjLRzBglR-IHT-'>실리콘밸리의 전쟁</a></h3>
<h3><a href='https://www.youtube.com/watch?v=4ZHloJVhcRY'>Revolution OS</a></h3>
<%
	List<File> list = null;
	File dir = null;

%>
<%
	// ppt
	out.print("<h1>JSP</h1>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>pdf</h1>");
	out.print("    <ul data-role='listview'>");

	dir = new File("www/ai/jsp"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>라이브러리</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/jsp/lib"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>연습문제</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/jsp/ex"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>수업코드</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/jsp/code"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");
 
%>

<%
	// ppt
	out.print("<h1>Java</h1>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>평가문제</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/java/test"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>라이브러리</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/java/lib"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>pdf</h1>");
	out.print("    <ul data-role='listview'>");

	dir = new File("www/ai/java"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>연습문제</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/java/ex"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");

	out.print("<div data-role='collapsible'>");
	out.print("    <h1>수업코드</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/java/code"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");
	out.print("<div data-role='collapsible'>");
	out.print("    <h1>과제</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/java/homework"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");
 
	out.print("<div data-role='collapsible'>");
	out.print("    <h1>입사문제(코딩테스트)</h1>");
	out.print("    <ul data-role='listview'>");
	
	dir = new File("www/ai/java/codingtest"); 
	list = subDirList(dir.getAbsolutePath());
	Collections.sort(list);
	showLink(list, out);
	
	out.print("    </ul>");
	out.print("</div>");
%>

<%!
public List<File> subDirList(String source) throws IOException {
	List<File> list = new ArrayList<File>();
	
	File dir = new File(source);
	File[] fileList = dir.listFiles();
	for (int i = 0; i < fileList.length; i++) {
		File file = fileList[i];
		if (file.isFile()) {
			list.add(file);
		}
	}
	return list;
}

public void showLink(List<File> list, javax.servlet.jsp.JspWriter out) throws IOException {
	for (int i = 0; i < list.size(); i++) {
		File file = list.get(i);
		String source = file.getAbsolutePath();
		out.print("<li>");
		out.print("<a href='" + source.substring(source.indexOf("www") + 3) + "' target=_blank>" 
					+ source.substring(source.indexOf("www") + 3) + "</a>");
		out.print("</li>");
	}
}
%>

</body>
</html>