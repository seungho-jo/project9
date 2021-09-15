package mypage_gosu;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;


import customer.DBConnection;

public class Myclass_gosu_Dao {

	Connection conn = null; 
	PreparedStatement pstmt = null; 
	ResultSet rs = null; 
	
	//운영중인 클래스 현황
	public ArrayList<Myclass_gosu> classlist_gosu(String id){
		ArrayList<Myclass_gosu> list = new ArrayList<Myclass_gosu>();
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		try {
			String sql = "SELECT classcode, title, nickname, id, profile, price, loc\r\n"
					+ "FROM gosuform\r\n"
					+ "WHERE id = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Myclass_gosu sl = new Myclass_gosu();
				sl.setClasscode(rs.getString("classcode"));
				sl.setNickname(rs.getString("nickname"));
				sl.setTitle(rs.getString("title"));
				sl.setPrice(rs.getString("price"));
				sl.setLoc(rs.getString("loc"));
				sl.setProfile(rs.getString("profile"));
				list.add(sl);
			}
		} catch (SQLException e) {
			System.out.println("예외발생");
			e.printStackTrace();
		} finally{
			// DB 연결을 종료한다.
			try {
				if (rs != null) rs.close();
				if (pstmt != null) pstmt.close();
				if (conn != null) conn.close();
			} catch (Exception e) {
				throw new RuntimeException(e.getMessage());
			}
		}
		return list;
	}
	
	//받은 외주 현황
	
	
	
}
