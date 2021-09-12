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
	// 상세정보
	public Question showQs(String id, String qcode) {
		Question qs = new Question();
		try {
			String sql = "select * from question where id = ? and qcode = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, qcode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				qs.setCategory(rs.getString("category"));
				qs.setTitle(rs.getString("title"));
				qs.setAnswer(rs.getString("answer"));
				qs.setWdate(rs.getString("wdate"));
				qs.setContent(rs.getString("content"));
				qs.setQcode(rs.getString("qcode"));
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
		return qs;
	}
	// 문의 작성
	public void writeQs(Question qs) {
		try {
			String sql = "insert into question values(?||seq_qs.nextval,?,?,?,sysdate,?,?)";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qs.getQcode());
			pstmt.setString(2, qs.getTitle());
			pstmt.setString(3, qs.getCategory());
			pstmt.setString(4, qs.getContent());
			pstmt.setString(5, qs.getAnswer());
			pstmt.setString(6, qs.getId());
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
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	// 문의 삭제
	public void deleteQs(Question qs) {
		try {
			String sql = "delete from question where id = ? and qcode = ?";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qs.getId());
			pstmt.setString(2, qs.getQcode());
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
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	// 문의 수정
	public void updateQs(Question qs) {
		try {
			String sql = "update question set category = ?, title = ?, "
					+ "content = ?, wdate = sysdate where qcode = ? and id = ?";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qs.getCategory());
			pstmt.setString(2, qs.getTitle());
			pstmt.setString(3, qs.getContent());
			pstmt.setString(4, qs.getQcode());
			pstmt.setString(5, qs.getId());
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
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
}
