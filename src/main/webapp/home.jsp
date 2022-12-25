<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
    
<%
	Object checked_id = "";
	if(checked_id != null) {
		checked_id = session.getAttribute("checked_id");
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
</head>
<body>

<%= checked_id%>님, 어서오세요! 

<button onclick="location.href='../todo/to_do_create.jsp'";> 일정등록하기 </button>

</body>
</html>