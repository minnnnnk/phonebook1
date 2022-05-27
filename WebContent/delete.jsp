<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>

<%	
	int id = Integer.parseInt(request.getParameter("id"));
	//System.out.println(id);
	
	PhoneDao phonedao = new PhoneDao();
	int count = phonedao.personDelete(id);
	System.out.println(count);
	
	response.sendRedirect("./list.jsp");
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