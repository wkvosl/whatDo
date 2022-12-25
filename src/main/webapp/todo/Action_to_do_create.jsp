<%@page import="java.io.Console"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    	String get_whatdo_title = request.getParameter("whatdo_title");
    	String get_whatdo_whendate = request.getParameter("whatdo_whendate");
    	String get_whatdo_writedate = request.getParameter("whatdo_writedate");
    	String[] get_whatdo_subject = request.getParameterValues("whatdo_subject");
    	String get_whatdo_content = request.getParameter("whatdo_content");
    	
     	String subject ="";
    	for(int i = 0; i < get_whatdo_subject.length; i++){
    		subject = get_whatdo_subject[i];
    		out.println(subject);
    	} 
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>



</body>
</html>