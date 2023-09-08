package shop.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import model.util.DBManager;

public class MemberDAO {
	private MemberDAO() {}
	
	public static MemberDAO instance = new MemberDAO();
	
	public static MemberDAO getInstance() {
		return instance;
	}
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//회원 등록
	public int MemberInsert(MemberDTO dto) {
		int row = 0;
		String query = "insert into tbl_members values(tbl_members_seq_idx.nextval,?,?,?,?,?)";
		
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, dto.getUsername());
			pstmt.setString(2, dto.getPass());
			pstmt.setString(3, dto.getZipcode());
			pstmt.setString(4, dto.getAddress());
			pstmt.setString(5, dto.getDe_address());
			row = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBManager.close(conn, pstmt);
		}
		return row;
	}
}
