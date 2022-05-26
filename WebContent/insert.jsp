<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%

	//파라미터에서 값 꺼내오기
	String name = request.getParameter("name");	
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	//System.out.println(name+","+hp+","+company);
	
	
	//person객체만들기
	PersonVo personVo = new PersonVo(name, hp ,company);
	System.out.println(personVo);

	//PhoneDao객체만들기
	PhoneDao phoneDao = new PhoneDao();

	//PhoneDao의 personInsert()를 이용해서 저장
	int count = phoneDao.personInsert(personVo);
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