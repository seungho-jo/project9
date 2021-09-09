package gosuform;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class Gosuform_Dao {
	
	Connection conn = null; 
	PreparedStatement pstm = null; 
	ResultSet rs = null; 
	
	public void Gosuform(Gosuform gosuform) {
		try {
			String sql = "insert into gosuform(classcode,id,nickname,info,history,\r\n"
					+ "sns,category,ftf,loc,price,classtime)"
					+ "values(seq_classcode.NEXTVAL,?,?,?,?,?,?,?,?,?,?)";
			conn = DBConnection.getConnection();
			pstm = conn.prepareStatement(sql);
			//pstm.setString(1, gosuform.getClasscode());
			pstm.setString(1, gosuform.getId());
			pstm.setString(2, gosuform.getNickname());
			pstm.setString(3, gosuform.getInfo());
			pstm.setString(4, gosuform.getHistory());
			pstm.setString(5, gosuform.getSns());
			pstm.setString(6, gosuform.getCategory());
			pstm.setString(7, gosuform.getFtf());
			pstm.setString(8, gosuform.getLoc());
			pstm.setString(9, gosuform.getPrice());
			pstm.setString(10, gosuform.getClasstime());
			pstm.executeUpdate();
		} catch (SQLException e1) {
			System.out.println("예외발생");
			e1.printStackTrace();
		} finally{
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstm != null) {
					pstm.close();
				}
				
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e1) {
				throw new RuntimeException(e1.getMessage());
			}
		}
	}


}
