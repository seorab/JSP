import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class JdbcTest2 {
	public static void main(String[] args) {
		try {
			// 1. ���̺귯���� �޸� ���
			Class.forName("com.mysql.jdbc.Driver");

			// 2. DB ����
			String url = "jdbc:mysql://10.10.14.99:3306/java";
			String id = "root";
			String pw = "mysql";
			// java.sql ��Ű�� ���̺귯�� import
			Connection con = DriverManager.getConnection(url, id, pw);
			
			// 3. Query ���� �غ�
			String sql = "insert into test (id, name) values ";
			sql += "    (null, ?)";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "python");
			
			// 4. Query ����
			stmt.executeUpdate();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}


