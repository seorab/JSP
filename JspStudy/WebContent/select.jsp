<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
try {
	DBManager db = DBManager.getInstance();
	Connection con = db.open();
	
	// 3. Query 실행 준비
	String sql = "select id, name from test";
	PreparedStatement stmt = con.prepareStatement(sql);
	
	// 4. Query 실행
	ResultSet rs = stmt.executeQuery();
	while(rs.next()) {
		int id2 = rs.getInt("id");
		String name = rs.getString("name");
		out.println(id2 + "  " + name);
	}

} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
}
%>