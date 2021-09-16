package customer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Coupon_Dao {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	// 내 쿠폰 조회
	public ArrayList<Coupon> cp_list(String id) {
		ArrayList<Coupon> list = new ArrayList<Coupon>();
		try {
			String sql = "SELECT count(*) as cnt,DISCOUNT FROM COUPON a,CP_ENROLLMENT b"
					+ " WHERE a.COUPONNUMBER = b.COUPONNUMBER and id = ? GROUP BY DISCOUNT"
					+ " ORDER BY discount";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Coupon c = new Coupon();
				c.setDiscount(rs.getInt("discount"));
				c.setCnt(rs.getInt("cnt"));
				list.add(c);
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
	// 쿠폰 총 갯수
	public int totalCp(String id) {
		int tot = 0;
		try {
			String sql = "select count(*) from CP_ENROLLMENT where id = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				tot = rs.getInt(1);
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
		return tot;
	}
	// 쿠폰 확인
	public boolean cp_check(String couponnumber) {
		boolean result = false;
		try {
			String sql = "select * from coupon where couponnumber = ? and status = 1";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, couponnumber);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = true;
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
		return result;
	}
	// 쿠폰 등록
	public void cp_enrollment(String id,String couponnumber) {
		try {
			String sql = "insert into cp_enrollment values(?,?)";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, couponnumber);
			pstmt.setString(2, id);
			pstmt.executeUpdate();
			conn.commit();
			sql = "update coupon set status = 2 where couponnumber = ?";
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, couponnumber);
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
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
