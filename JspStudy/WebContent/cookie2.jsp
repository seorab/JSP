<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="jquery.cookie.js"></script>
<script>
	$.cookie("key", "value");
	$.cookie("key2", "value2", { expires:1 } );
</script>