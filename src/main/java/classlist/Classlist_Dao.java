package classlist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import customer.DBConnection;



public class Classlist_Dao {

	Connection conn = null; 
	PreparedStatement pstmt = null; 
	ResultSet rs = null; 
	
	public ArrayList<Classlist> classlist_cate(String category){
		ArrayList<Classlist> list = new ArrayList<Classlist>();
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		try {
			String sql = "SELECT g.classcode, g.nickname,g.title,g.price,g.CATEGORY,g.id,g.formimg,m.profile\r\n"
					+ "FROM gosuform g, MEMBER m\r\n"
					+ "WHERE g.CATEGORY=? AND g.id = m.id "
					+ "ORDER BY classcode DESC";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Classlist sl = new Classlist();
				sl.setClasscode(rs.getString("classcode"));
				sl.setNickname(rs.getString("nickname"));
				sl.setTitle(rs.getString("title"));
				sl.setPrice(rs.getString("price"));
				sl.setId(rs.getString("id"));
				sl.setFormimg(rs.getString("formimg"));
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
	
	public Detailgosu detailproduct(String classcode) {
		Detailgosu de = new Detailgosu();
		try {
			String sql = "SELECT g.*,m.profile\r\n"
					+ "FROM gosuform g, MEMBER m\r\n"
					+ "WHERE classcode= ? AND g.id = m.id";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, classcode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				de.setClasscode(rs.getString("classcode"));
				de.setId(rs.getString("id"));
				de.setNickname(rs.getString("nickname"));
				de.setInfo(rs.getString("info"));
				de.setHistory(rs.getString("history"));
				de.setTitle(rs.getString("title"));
				de.setSns(rs.getString("sns"));
				de.setCategory(rs.getString("category"));
				de.setFtf(rs.getString("ftf"));
				de.setLoc(rs.getString("loc"));
				de.setPrice(rs.getString("price"));
				de.setClasstime(rs.getString("classtime"));
				de.setFormimg(rs.getString("formimg"));
				de.setProfile(rs.getString("profile"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		return de;
	}

}
