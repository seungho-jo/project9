package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Login_Join_Dao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	// 로그인
	public Member login(String id,String pass) {
		Member mem = null;
		try {
			String sql = "select * from member where id = ? and pass = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pass);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				mem = new Member();
				mem.setId(rs.getString("id"));
				mem.setPass(rs.getString("pass"));
				mem.setName(rs.getString("name"));
				mem.setPhone(rs.getString("phone"));
				mem.setZipcode(rs.getString("zipcode"));
				mem.setAddress1(rs.getString("address1"));
				mem.setAddress2(rs.getString("address2"));
				mem.setProfile(rs.getString("profile"));
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
		return mem;
	}
	// 아이디 중복 검사
	public boolean idCheck(String id) {
		boolean result = true;
		try {
			String sql = "select * from member where id = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result = false;
			}
		}catch(SQLException e){
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
		return result;
	}
	// 회원가입
	public void join(Member m) {
		try {
			String sql = "insert into member values(?,?,?,?,?,?,?,?)";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getId());
			pstmt.setString(2, m.getPass());
			pstmt.setString(3, m.getName());
			pstmt.setString(4, m.getPhone());
			pstmt.setString(5, m.getZipcode());
			pstmt.setString(6, m.getAddress1());
			pstmt.setString(7, m.getAddress2());
			pstmt.setString(8, m.getProfile());
			pstmt.executeUpdate();
			conn.commit();
		}catch(Exception e) {
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
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	// 회원정보 수정
	public void updateMember(Member m) {
		try {
			if(m.getProfile()!=null) {
				String sql = "update member set pass = ?, name = ?, phone = ?,"
						+ " zipcode = ?, address1 = ?, address2 = ?, profile = ?"
						+ " where id = ?";
				conn = DBConnection.getConnection();
				conn.setAutoCommit(false);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, m.getPass());
				pstmt.setString(2, m.getName());
				pstmt.setString(3, m.getPhone());
				pstmt.setString(4, m.getZipcode());
				pstmt.setString(5, m.getAddress1());
				pstmt.setString(6, m.getAddress2());
				pstmt.setString(7, m.getProfile());
				pstmt.setString(8, m.getId());
				System.out.println(m.getId());
				pstmt.executeUpdate();
				conn.commit();
			}else {
				String sql = "update member set pass = ?, name = ?, phone = ?,"
						+ " zipcode = ?, address1 = ?, address2 = ?"
						+ " where id = ?";
				conn = DBConnection.getConnection();
				conn.setAutoCommit(false);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, m.getPass());
				pstmt.setString(2, m.getName());
				pstmt.setString(3, m.getPhone());
				pstmt.setString(4, m.getZipcode());
				pstmt.setString(5, m.getAddress1());
				pstmt.setString(6, m.getAddress2());
				pstmt.setString(7, m.getId());
				System.out.println(m.getId());
				pstmt.executeUpdate();
				conn.commit();
			}
		}catch(Exception e) {
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
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	// 회원탈퇴
	public void deleteMember(String id) {
		try {
			String sql = "delete from member where id = ?";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			conn.commit();
		}catch(SQLException e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
	// 아이디찾기
	public String findId(String phone) {
		String id = null;
		try {
			String sql = "select id from member where phone = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				id = rs.getString("id");
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
		return id;
	}
	// 비밀번호 변경
	public String changePass(String id,String phone,String pass) {
		String result = "";
		try {
			String sql = "select * from member where id = ? and phone = ?";
			conn = DBConnection.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, phone);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				sql = "update member set pass = ? where id =? and phone = ?";
				conn = DBConnection.getConnection();
				conn.setAutoCommit(false);
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, pass);
				pstmt.setString(2, id);
				pstmt.setString(3, phone);
				pstmt.executeUpdate();
				conn.commit();
				result = "비밀변호 변경 완료";
			}else {
				result = "아이디,휴대폰 번호가 틀렸습니다";
			}
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
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return result;
	}
}
