import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class JdbcTest {
	public static void main(String[] args) {
		try {
			// 1. 라이브러리를 메모리 등록
			Class.forName("com.mysql.jdbc.Driver");

			// 2. DB 연결
			String url = "jdbc:mysql://localhost:3306/java";
			String id = "root";
			String pw = "mysql";
			// java.sql 패키지 라이브러리 import
			Connection con = DriverManager.getConnection(url, id, pw);
			
			// 3. Query 실행 준비
			String sql = "select * from emp";
			PreparedStatement stmt = con.prepareStatement(sql);
			
			// 4. Query 실행
			stmt.executeQuery();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}



