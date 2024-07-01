<%@page import="shopping.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src='https://kit.fontawesome.com/a076d05399.js'></script>

<html>
<head>
<link rel="stylesheet" href="css/messageUs.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Message Us</title>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Message Us <i class='fas fa-comment-alt'></i></div>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 style="text-align:center; color:yellow;">Message successfully sent. Our team will contact you soon!</h3>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h3 style="text-align:center; ">Some thing Went Wrong! Try Again!</h3>
<%} %>

<form action="messageUsAction.jsp" method="post">
<input class="input-style" type="text" name="subject" placeholder="Subject" required>
<hr>
<textarea class="input-style" name="body" placeholder="Enter Your Message" required></textarea>
<br>
<button class="button" type="submit">send <i class='far fa-arrow-alt-circle-right'></i></button>
</form>

<br><br><br>
</body>
</html>