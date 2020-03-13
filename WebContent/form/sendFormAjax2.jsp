<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("username");

	if(name.equals("홍길동")){
		out.print("true");
	}else{
		out.print("false");
	}

%>