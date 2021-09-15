package mypage_user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import os.DBConnection;

public class Myos_user_Dao {

	Connection conn = null; 
	PreparedStatement pstmt = null; 
	ResultSet rs = null; 
	
	
	public ArrayList<Myos_user> myoslist_user(String id){
		ArrayList<Myos_user> list = new ArrayList<Myos_user>();
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		try {
			String sql = "SELECT id, oscode, title, budget, taxinvoice,datepicker, (TRUNC(sysdate) - TRUNC(TO_DATE(DATEPICKER,'yyyy-mm-dd'))) as dday\r\n"
					+ "FROM osform\r\n"
					+ "WHERE id = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Myos_user sl = new Myos_user();
				sl.setOscode(rs.getString("oscode"));
				sl.setTitle(rs.getString("title"));
				sl.setBudget(rs.getString("budget"));
				sl.setTaxinvoice(rs.getString("taxinvoice"));
				sl.setDatepicker(rs.getString("datepicker"));	
				sl.setDday(rs.getString("dday"));
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
	


}
