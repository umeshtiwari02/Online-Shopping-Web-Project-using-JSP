<%@page import="shopping.porject.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try {
			Connection conn = ConnectionProvider.getCon();
			Statement st = conn.createStatement();
			
			String q1 = "create table users(name varchar(100), email varchar(100)primary key, mobileNumber bigint, securityQuestion varchar(200), answer varchar(200), password varchar(50), address varchar(500), city varchar(100), state varchar(100), country varchar(100))";
			System.out.println(q1);
			
			st.execute(q1);
			System.out.println("Table created");
			
		} catch(Exception e) {
			System.out.println(e);
		}
	%>
</body>
</html>
