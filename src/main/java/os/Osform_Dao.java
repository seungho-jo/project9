package os;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import classlist.Classlist;
import classlist.Detailgosu;
import customer.DBConnection;


public class Osform_Dao {


	Connection conn = null; 
	PreparedStatement pstmt = null; 
	ResultSet rs = null; 
	// oscode, id, title, category, ftf, loc, budget, datepicker, taxinvoice, explain, osfile
	public void osform(Osform osform) {
		try {
			String sql = "insert into osform values(seq_oscode.NEXTVAL,?,?,?,?,?,?,?,?,?,?)";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, osform.getId());
			pstmt.setString(2, osform.getTitle());
			pstmt.setString(3, osform.getCategory());
			pstmt.setString(4, osform.getFtf());
			pstmt.setString(5, osform.getLoc());
			pstmt.setString(6, osform.getBudget());
			pstmt.setString(7, osform.getDatepicker());
			pstmt.setString(8, osform.getTaxinvoice());
			pstmt.setString(9, osform.getExplain());
			pstmt.setString(10, osform.getOsfile());
			pstmt.executeUpdate();
		} catch (SQLException e1) {
			System.out.println("예외발생");
			e1.printStackTrace();
		} finally{
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
				}
				
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e1) {
				throw new RuntimeException(e1.getMessage());
			}
		}
	}
	
	//외주리스트
	public ArrayList<Oslist> oslist_cate(String category){
		ArrayList<Oslist> list = new ArrayList<Oslist>();
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		ResultSet rs = null;
		try {
			String sql = "SELECT oscode, id, title, category, budget, explain, (TRUNC(sysdate) - TRUNC(TO_DATE(DATEPICKER,'yyyy-mm-dd'))) as datepicker "
					+ "FROM osform "
					+ "WHERE CATEGORY= ? "
					+ "ORDER BY oscode desc";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, category);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Oslist sl = new Oslist();
				sl.setOscode(rs.getString("oscode"));
				sl.setId(rs.getString("id"));
				sl.setTitle(rs.getString("title"));
				sl.setCategory(rs.getString("category"));
				sl.setBudget(rs.getString("budget"));
				sl.setExplain(rs.getString("explain"));
				sl.setDatepicker(rs.getString("datepicker"));
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
	
	
	public OsDetail os_detail(String oscode) {
		OsDetail de = new OsDetail();
		try {
			String sql = "SELECT g.*,m.profile, m.name "
					+ "FROM osform g, MEMBER m "
					+ "WHERE oscode= ? AND g.id = m.id";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, oscode);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				de.setOscode(rs.getString("oscode"));
				de.setId(rs.getString("id"));
				de.setTitle(rs.getString("title"));
				de.setCategory(rs.getString("category"));
				de.setFtf(rs.getString("ftf"));
				de.setLoc(rs.getString("loc"));
				de.setBudget(rs.getString("budget"));
				de.setDatepicker(rs.getString("datepicker"));
				de.setTaxinvoice(rs.getString("taxinvoice"));
				de.setExplain(rs.getString("explain"));
				de.setOsfile(rs.getString("osfile"));
				de.setProfile(rs.getString("profile"));
				de.setName(rs.getString("name"));
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
