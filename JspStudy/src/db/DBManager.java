package db;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBManager {
	private String url = "jdbc:mysql://localhost:3306/java";
	private String id = "root";
	private String pw = "mysql";
	private Connection con = null;
	// private static Connector connector = new Connector();
	private static DBManager connector = null;

	private DBManager() {
	}

	public synchronized static DBManager getInstance() {
		if (connector == null) {
			connector = new DBManager();
		}
		return connector;
	}

	public Connection open() throws ClassNotFoundException, SQLException {
//		Class.forName("com.mysql.jdbc.Driver");
		Class.forName("core.log.jdbc.driver.MysqlDriver");
		con = DriverManager.getConnection(url, id, pw);
		return con;
	}

	public void close(Connection con, PreparedStatement stmt, ResultSet rs) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		if (con != null) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}