<%@page import="shopping.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" /><script src='https://kit.fontawesome.com/a076d05399.js'></script>

<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>

<%
String msg = request.getParameter("msg");
if ("added".equals(msg)) 
{
%>
<h3 class="alert">Product added successfully!</h3>
<%} %>

<%
if ("exist".equals(msg))
{
%>
<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>
<%} %>

<%
if ("invalid".equals(msg))
{
%>
<h3 class="alert">Something went wrong! Try again!!</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
try {
	Connection conn = ConnectionProvider.getCon();
	Statement st = conn.createStatement();
	
	ResultSet rs = st.executeQuery("select * from product where active='Yes'");
	
	while (rs.next())
	{
		
%>

          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td><i class="fa fa-inr"></i> </i></td>
            <td><a href="">Add to cart <i class='fas fa-cart-plus'></i></a></td>
            <td><i class="fa fa-inr"></i><%=rs.getString(4) %> </i></td>
            <td><a href="addToCartAction.jsp?id=<%=rs.getString(1) %>">Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
<%
	}
} 
catch(Exception e)
{
	System.out.println(e);
}
%>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>