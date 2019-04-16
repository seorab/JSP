import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import db.DBManager;

public class JdbcTest3 {
	public static void main(String[] args) {
		
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
				System.out.println(id2 + "  " + name);
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}



