<%@page import="shopping.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<% 
String email=session.getAttribute("email").toString();
String id = request.getParameter("id");
String incdec = request.getParameter("quantity");
%>