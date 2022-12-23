<%@page import="java.sql.*"%>
<%@page import="java.io.Writer"%>
<%@page import="DB.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;

		String id = request.getParameter("user_id");
    	String pw = request.getParameter("user_pw");
    	String email = request.getParameter("user_email");

    	
    	//DB조회해서 id/pw/email 조회 하고 ""대신 넣고 돌려보기.
    	if(id == "" || pw =="" || email==""){
    		String url = "./signUp.jsp";
			response.sendRedirect(url);
			return;
    	}
    	
    	conn = DBConnection.getConnection();
    	String sql = "insert into join_tbl (user_id, user_pw) values (?,?)";
    	pstmt = conn.prepareStatement(sql);
    		pstmt.setString(1, id);
    		pstmt.setString(2, pw);
    		pstmt.executeUpdate();
    	
%>
		<script>
			alert('회원가입이 성공적으로 되었습니다.');
			location.href="../home.jsp";
		</script>    
