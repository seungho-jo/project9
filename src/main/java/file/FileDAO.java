package file;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class FileDAO {

	private Connection conn;
	
	public int upload(String fileName, String fileRealName) {
		Connection conn = null; 
		PreparedStatement pstm = null; 
		ResultSet rs = null;
		try {
			String sql = "INSERT INTO os_file values (?,?)";
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, fileName);
			pstm.setString(2, fileRealName);
			return pstm.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
