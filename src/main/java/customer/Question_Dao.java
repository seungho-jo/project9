package customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Question_Dao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	// 문의 리스트 조회
	public ArrayList<Question> qList(String id,int start,int end){
		ArrayList<Question> list = new ArrayList<Question>();
		try {
			String sql = "SELECT * FROM (SELECT ROWNUM AS RNUM,A.* FROM "
					+ "(SELECT * FROM question where id = ? ORDER BY WDATE DESC) A)"
					+ " WHERE RNUM >= ? AND RNUM <= ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Question qs = new Question();
				qs.setQcode(rs.getString("qcode"));
				qs.setTitle(rs.getString("title"));
				qs.setWdate(rs.getString("wdate"));
				qs.setAnswer(rs.getString("answer"));
				list.add(qs);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	// 총 게시물 수
	public int questiontot(String id) {
		int tot = 0;
		try {
			String sql = "select count(*) tot from question where id = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				tot = rs.getInt("tot");
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return tot;
	}
}
