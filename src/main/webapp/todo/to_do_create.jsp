<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>✏하루하루 기록하기</title>
<link rel="stylesheet" href="../style/to_do_create.css">
</head>
<body>

<section>
	<div id="whatdo_container">
		<form action="Action_to_do_create.jsp" method="post">
			<h4>제목 :</h4> <input name="whatdo_title"><br>
			<h4>공부시작 :</h4> <input name="whatdo_whendate"><br>
			<h4>작성일 :</h4> <input name="whatdo_writedate"><br>
			<h4>주제 :</h4> <label><input type="checkbox" name="whatdo_subject" value="jsp">JSP</label>
						   <label><input type="checkbox" name="whatdo_subject" value="db">DB</label>
						   <label><input type="checkbox" name="whatdo_subject" value="js">JavaScript</label><br>
			<h4>내용 :</h4> <textarea name="whatdo_content" cols="" rows="" required></textarea><br>
			<input type="submit" value="작성하기">
		</form>	
	</div>
</section>


</body>
</html>