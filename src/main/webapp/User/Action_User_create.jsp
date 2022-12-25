<%@page import="User.Check_id_pw_email"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.Writer"%>
<%@page import="DB.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String sql ="";
	
	conn = DBConnection.getConnection();
	
	String signUp_get_id = request.getParameter("user_id");
	String signUp_get_pw = request.getParameter("user_pw");
	String signUp_get_email = request.getParameter("user_email");

	if(Check_id_pw_email.checkID(signUp_get_id)){
		out.println("<script>");	
		out.println("alert('중복된 아이디 입니다.')");	
		out.println("location.href='./signUp.jsp'");	
		out.println("</script>");
	}else if(Check_id_pw_email.checkEMAIL(signUp_get_email)){
		out.println("<script>");	
		out.println("alert('중복된 이메일 입니다.')");	
		out.println("location.href='./signUp.jsp'");	
		out.println("</script>");
	}else{
		sql = "insert into join_tbl (user_id, user_pw, user_email, user_joindate) " + 
   	    	  " values (?, ?, ?, now())";
   	    	pstmt = conn.prepareStatement(sql);
   	    		pstmt.setString(1, signUp_get_id);
   	    		pstmt.setString(2, signUp_get_pw);
   	    		pstmt.setString(3, signUp_get_email);
   	    		pstmt.executeUpdate();		
   	    
//    	   아이디를 home.jsp로 데려가고 싶다..
//    	 	out.println("<html>");	
//    	 	out.println("<body>");	

		session.setAttribute("checked_id", signUp_get_id);
   	    out.println("<script>");	
   	 	out.println("alert('회원가입이 성공적으로 되었습니다.')");	
   	 	out.println("location.href='../home.jsp'");	
   	 	out.println("</script>");	
   	 	
//    		out.println("</html>");	
// 	 	out.println("</body>");
	 	

	}    	
%>


