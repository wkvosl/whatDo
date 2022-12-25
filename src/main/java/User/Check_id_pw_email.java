package User;

import java.sql.*;
import DB.DBConnection;

public class Check_id_pw_email {

	/*
	 *어떤것이 중복되었는지 확인 하기 위해 id/email 따로 만듦. 나중에 더 좋은 코드 있으면 바꾸기.
	 *중복코드 있으나 작동이 되는것으로 만족하고 일단 넘김.
	 *Action_User_create.jsp에서 씀.
	 */
	
	static String sql="";
	static String user_id="";
	static String user_email="";
	static String user_pw="";
	
	static String tableName ="user_tbl";
	
	static Statement stmt = null;
	static ResultSet rs = null;
	
//	아이디 중복 체크
	public static boolean checkID(String id) {
		
		Connection conn = DBConnection.getConnection();
		sql = "select * from "+tableName+" where user_id = '" + id + "'";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				user_id = rs.getString("user_id");
				if(user_id.equals(id)){
					return true;
				}
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
//	이메일 중복 체크
	public static boolean checkEMAIL(String email) {
	
		Connection conn = DBConnection.getConnection();
		sql = "select * from "+tableName+" where user_email = '" + email + "'";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				user_email = rs.getString("user_email");
				if(user_email.equals(email)){
					return true;
				}
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
		return false;
	}
	
//	비밀번호 아이디와 일치 체크
	public static boolean checkPW(String id, String pw) {
		
		Connection conn = DBConnection.getConnection();
		sql = "select * from "+tableName+" where user_id = '" + id + "'";
		
		try {
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()){
				user_pw = rs.getString("user_pw");
				if(user_pw.equals(pw)){
					return true;
				}
			}
			
		}catch (Exception e){
			e.printStackTrace();
		}
		return false;
	}
}
