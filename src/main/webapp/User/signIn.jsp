<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>✏하루하루 기록하기</title>

<link rel="stylesheet" href="../style/signUp.css">

</head>
<body>

<h3>로그인</h3>

	<div id="">

		<form action="Action_User_signIn.jsp" method="post" id="signIn_form">
			<input type="text" name="user_id" placeholder="아이디를 입력하세요." required>
			<input type="password" name="user_pw" placeholder="비밀번호를 입력하세요." required>
			<input type="submit" value="로그인">
		</form>

	</div>

</body>
</html>