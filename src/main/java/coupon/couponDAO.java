package coupon;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import admin.DBConnection;

public class couponDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// 쿠폰 생성.
	public boolean create(String couponName, String couponNumber, int discount){
		boolean result = false;
		try {
			String sql = "insert into coupon values(?,?,?,\r\n"
					+ "sysdate,1)";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, couponName);
			pstmt.setString(2, couponNumber);
			pstmt.setInt(3, discount);
			pstmt.executeUpdate();
			result = true;
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("예외발생");
			e.printStackTrace();
			try {
				conn.rollback();
			}catch(SQLException e1) {
				e1.printStackTrace();
			}
		}finally {
			try {
				if(pstmt!=null) {
					pstmt.close();
				}
				if(conn!=null) {
					conn.close();
				}
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		return result;
	}
	
	// 쿠폰 조회
	public ArrayList<admin_coupon> view(){
		ArrayList<admin_coupon> list = new ArrayList<admin_coupon>();
		try {
		String sql="select * from coupon where rownum <=10 ORDER BY cDay asc";
		conn = DBConnection.getConnection();
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.executeQuery();
		while(rs.next()) {
			admin_coupon adc= new admin_coupon();
			adc.setCouponName(rs.getString("couponName"));
			adc.setCouponNumber(rs.getString("couponNumber"));
			adc.setDiscount(rs.getInt("discount"));
			adc.setcDay(rs.getString("cDay"));
			adc.setStatus(rs.getInt("status"));
			list.add(adc);
		}
	} catch(SQLException e) {
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
	
	// 쿠폰 삭제
	public void delete(String conponNumber) {
		try {
			String sql="delete from coupon where couponNumber = ?";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, conponNumber);
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
