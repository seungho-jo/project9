package classlist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ClassApplicationDao {
	Connection conn = null; 
	PreparedStatement pstmt = null; 
	ResultSet rs = null; 
	// 클래스 신청 체크
	public boolean classAp_check(String classcode) {
		boolean result = true;
		try {
			String sql = "select * from application_status_member where classcode = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, classcode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = false;
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}
	// 클래스 신청
	public void classAp(String id, String classcode) {
		try {
			String sql = "insert into application_status_member values(?,?,0)";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,id);
			pstmt.setString(2, classcode);
			pstmt.executeUpdate();
			conn.commit();
		}catch(SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
