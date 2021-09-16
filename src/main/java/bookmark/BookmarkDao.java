package bookmark;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BookmarkDao {
	Connection conn = null; 
	PreparedStatement pstmt = null; 
	ResultSet rs = null;
	// 북마크 입력,취소(기능)
	public void bmInsert(String id,String classcode) {
		try {
			String sql = "MERGE INTO bookmark a\r\n"
					+ "USING dual\r\n"
					+ "ON (a.classcode = ? AND a.id = ?)\r\n"
					+ "WHEN MATCHED THEN \r\n"
					+ "	UPDATE SET a.status = "
					+ "case "
					+ "when a.status = 1 then 2 "
					+ "when a.status = 2 then 1 "
					+ "end WHERE a.classcode = ? AND a.id = ?\r\n"
					+ "WHEN NOT MATCHED THEN \r\n"
					+ "	INSERT values(?,?,1)";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, classcode);
			pstmt.setString(2, id);
			pstmt.setString(3, classcode);
			pstmt.setString(4, id);
			pstmt.setString(5, classcode);
			pstmt.setString(6, id);
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
				if(pstmt!=null)	pstmt.close();
				if(conn!=null)	conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	// 북마크 상세정보 불러오기
	public Bookmark bookmarkInfo(String id,String classcode) {
		Bookmark bm = new Bookmark();
		try {
			String sql = "select * from bookmark where id = ? and classcode = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, classcode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bm.setClasscode(rs.getString("classcode"));
				bm.setId(rs.getString("id"));
				bm.setStatus(rs.getString("status"));
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)	rs.close();
				if(pstmt!=null)	pstmt.close();
				if(conn!=null)	conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return bm;
	}
	// 북마크 리스트
	public ArrayList<BookmarkInfo> bookmarkList(String id){
		ArrayList<BookmarkInfo> list = new ArrayList<BookmarkInfo>();
		try {
			String sql = "select b.*,c.profile from bookmark a,GOSUFORM b,"
					+ " MEMBER c WHERE a.CLASSCODE =b.CLASSCODE AND "
					+ "b.id=c.id and a.id = ? and a.status = 1";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BookmarkInfo bm = new BookmarkInfo();
				bm.setFormimg(rs.getString("formimg"));
				bm.setTitle(rs.getString("title"));
				bm.setProfile(rs.getString("profile"));
				bm.setNickname(rs.getString("nickname"));
				bm.setPrice(rs.getString("price"));
				list.add(bm);
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)	rs.close();
				if(pstmt!=null)	pstmt.close();
				if(conn!=null)	conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
}
