package login;

import java.io.File;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class Login_Join_Dao {
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	private static final String SAVEFOLDER = "C:\\javaexp\\workspacce\\project9\\src\\main\\webapp\\upload";
	private static final String ENCTYPE = "UTF-8";
	private static int MAXSIZE = 5*1024*1024;
	MultipartRequest multi = null;
	int filesize = 0;
	String filename = null;
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
	// 회원가입
	public void join(HttpServletRequest req) {
		try {
			File file = new File(SAVEFOLDER);
			if (!file.exists())
				file.mkdirs();
			multi = new MultipartRequest(req, SAVEFOLDER, MAXSIZE, ENCTYPE, new DefaultFileRenamePolicy());
			if (multi.getFilesystemName("profile") != null) {
				filename = multi.getFilesystemName("profile");
			}
			String sql = "insert into member values(?,?,?,?,?,?,?,?)";
			conn = DBConnection.getConnection();
			conn.setAutoCommit(false);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, multi.getParameter("id"));
			pstmt.setString(2, multi.getParameter("pass"));
			pstmt.setString(3, multi.getParameter("name"));
			pstmt.setString(4, multi.getParameter("phone"));
			pstmt.setString(5, multi.getParameter("zipcode"));
			pstmt.setString(6, multi.getParameter("addr1"));
			pstmt.setString(7, multi.getParameter("addr2"));
			pstmt.setString(8, filename);
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
	
}
