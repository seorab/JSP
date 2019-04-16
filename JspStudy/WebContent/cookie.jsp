<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<script>
var cookies = "";
var name = "test";
var value = "cookieTest";
cookies += name + "=" + value + ";";

// var expires = new Date();
// expires.setDate(expires.getDate() + 1); // Fri, 03 Jan 2012 07:00:03 GMT;
// cookies += "expires=" + expires.toGMTString() + ";";

document.cookie = cookies;
document.write(cookies);
</script>