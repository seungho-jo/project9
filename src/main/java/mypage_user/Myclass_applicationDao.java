package mypage_user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import classlist.DBConnection;
import gosuform.Gosuform;

public class Myclass_applicationDao {
	Connection conn = null; 
	PreparedStatement pstmt = null; 
	ResultSet rs = null; 
	// 내 수강신청 현황
	public ArrayList<Gosuform> myClassAp(String id){
		ArrayList<Gosuform> list = new ArrayList<Gosuform>();
		try {
			String sql = "SELECT a.id,a.STATUS,b.* FROM application_status_member a,"
					+ " GOSUFORM b WHERE a.CLASSCODE = b.CLASSCODE AND"
					+ " a.id = ? ";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Gosuform gf = new Gosuform();
				gf.setTitle(rs.getString("title"));
				gf.setStatus(rs.getInt("status"));
				gf.setNickname(rs.getString("nickname"));
				gf.setPrice(rs.getString("price"));
				gf.setLoc(rs.getString("loc"));
				gf.setClasstime(rs.getString("classtime"));
				gf.setClasscode(rs.getString("classcode"));
				gf.setFormimg(rs.getString("formimg"));
				list.add(gf);
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
		return list;
	}
}
