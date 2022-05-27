<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import="com.javaex.dao.PhoneDao" %>
<%@ page import="com.javaex.vo.PersonVo" %>

<%	
	//파라미터 꺼내기
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String hp = request.getParameter("hp");
	String company = request.getParameter("company");
	
	//파라미터 값 저장
	PersonVo personVo = new PersonVo(id, name, hp, company);
	System.out.println(personVo);
	
	//update해주기
	PhoneDao phoneDao = new PhoneDao();
	phoneDao.personUpdate(personVo);
	
	
	//리스트로 리다이렉트
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