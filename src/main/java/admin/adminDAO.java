package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class adminDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public admin_Member login(String id, String pass) {
		admin_Member admem = new admin_Member();
	
		try {
			String sql = "select * from ADMINMEM where id=? and pass = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			conn.setAutoCommit(false);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				admem.setId(rs.getString("id"));
				admem.setPass(rs.getString("pass"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("예외발생");
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) {
					rs.close();
				}
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			}catch(Exception e1) {
				throw new RuntimeException(e1.getMessage());
			}
		}
		
		return admem;
	}
}
