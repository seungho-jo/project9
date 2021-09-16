package Report;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import admin.DBConnection;

public class reportDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//신고 조회
	public ArrayList<admin_report> reportList(){
		ArrayList<admin_report> list = new ArrayList<admin_report>();
		try {
			String sql="select * from report where rownum <=10 ORDER BY classCode";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				admin_report adr = new admin_report();
				adr.setClassCode(rs.getString("classCode"));
				adr.setId(rs.getString("id"));
				adr.setTitle(rs.getString("title"));
				adr.setcDate(rs.getString("cDate"));
				adr.setStatus(rs.getInt("status"));
				list.add(adr);
			}
			}catch(SQLException e) {
				e.printStackTrace();
			}finally {
				try {
					if(rs!=null) rs.close();
					if(pstmt!=null) pstmt.close();
					if(conn!=null) conn.close();
					
				}catch(Exception e1) {
					e1.printStackTrace();
				}
			}
				return list;
	}
	
	// 신고 삭제
	public void delete(String classCode) {
		
		try {
			String sql = "";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, classCode);
			pstmt.executeUpdate();
			conn.commit();
		}catch(SQLException e) {
			e.printStackTrace();
			try {
				conn.rollback();
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(SQLException e) {
				e.printStackTrace();
			}
	}
}
}
