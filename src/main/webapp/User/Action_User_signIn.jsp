<%@page import="User.Check_id_pw_email"%>
<%@page import="java.io.Writer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    	<script>
			function move_page_confirm() {
				const con = confirm('회원가입 페이지로 이동하시겠습니까?'); 
				if(con == false){
					location.href="./signIn.jsp";	
				}else{
					location.href="./signUp.jsp";
				}
			}
		</script>
    
    <% 
    	String login_get_user_id = request.getParameter("user_id");
    	String login_get_user_pw = request.getParameter("user_pw");
    	
    	//여기서 DB와 정보가 같은지, check_id_pw_email class를 써서 사용
    	if(!Check_id_pw_email.checkID(login_get_user_id)){
    			out.println("<script>");
    			out.println("alert('아이디가 틀립니다.')");
    			out.println("move_page_confirm()");
    			out.println("</script>");
    	}else if(!Check_id_pw_email.checkPW(login_get_user_id, login_get_user_pw)){
    			out.println("<script>");
    			out.println("alert('비밀번호가 틀립니다.')");
    			out.println("location.href='./signIn.jsp'");
    			out.println("</script>");
    	}else{
    			session.setAttribute("checked_id", login_get_user_id);
    			response.sendRedirect("../home.jsp");
		}
    %>
    
    
