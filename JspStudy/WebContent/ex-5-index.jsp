<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="jquery.cookie.js"></script>
<script>
	var value = $.cookie("open");
	
	if(value == null) {
		window.open("./ex-5-popup.jsp", "", "width=400 height=300");
	} else {
		
	}
 // 팝업창 생성 코드 - window.open("./ex-5-popup.jsp", "", "width=400 height=300");
</script>