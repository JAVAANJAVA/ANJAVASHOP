package shop.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.util.DBManager;

public class MemberDAO {
	private MemberDAO() {}
	private static MemberDAO instance = new MemberDAO();
    
	public static MemberDAO getInstance() {
		return instance;
	}
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	//ID 중복 검사 메소드
	public int memberIDcheck(String username){

		String query="select count(*) as counter  from tbl_members where username=?";
		int row=0;//리턴타입
		try {
			conn = DBManager.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, username);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				row = rs.getInt(1); //row = rs.getInt("counter");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			DBManager.close(conn, pstmt,rs);
		}
		return row;
	}

		public int memberLogin(String userid, String passwd)  {
			
			String query = "select pass from tbl_members where username = ?";
			int row=0;

			try {
				conn = DBManager.getConnection();
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1,userid);		
				rs = pstmt.executeQuery();
				
				if(rs.next()){//아이디가 존재하는 경우
					String dbpass = rs.getString("pass");
					if(dbpass.equals(passwd)){  //로그인에 성공하면 최근접속일자 지정
						row = 1;
					}else{ //비밀번호가 다른 경우
						row = 0;
					}
				}else{  //아이디가 없는 경우
					row = -1;
				}
			
			} catch(SQLException e)	{
				e.printStackTrace();
			} finally	{
				DBManager.close(conn, pstmt,rs);
			}
			return row;
		}
		
		public MemberDTO memberSelect(String username)  {

			String query = "";
			MemberDTO vo = new MemberDTO();
			try {
				conn = DBManager.getConnection();
				query = "select * from tbl_members where username = ?";
				pstmt = conn.prepareStatement(query);

				pstmt.setString(1,username);		
				rs = pstmt.executeQuery();
				if(rs.next()){
					vo.setUsername(rs.getString("username"));
					vo.setPass(rs.getString("pass"));
					vo.setZipcode(rs.getString("zipcode"));	
					vo.setAddress(rs.getString("address"));	
					vo.setDe_address(rs.getString("de_address"));	
					
				
				}
			} catch(SQLException e)	{
				e.printStackTrace();
			} finally	{
				DBManager.close(conn, pstmt,rs);
			}
			return vo;
		}
}