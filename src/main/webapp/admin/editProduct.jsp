<%@page import="shopping.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>

<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>

<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Add New Product</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
</style>
</head>
<body>
 <h2><a class="back" href="allProductEditProduct.jsp"><i class='fas fa-arrow-circle-left'> Back</i></a></h2>

<%
String id = request.getParameter("id");
try {
	Connection conn = ConnectionProvider.getCon();
	Statement st = conn.createStatement();
	ResultSet rs = st.executeQuery("select * from product where id='"+id+"' ");
	
	while(rs.next()) 
	{
%>

<div class="left-div">
 <h3>Enter Name</h3>

<hr>
</div>

<div class="right-div">
<h3>Enter Category</h3>
 
<hr>
</div>

<div class="left-div">
<h3>Enter Price</h3>
 
<hr>
</div>

<div class="right-div">
<h3>Active</h3>

 <hr>
</div>
 <i class='far fa-arrow-alt-circle-right'></i>

<%
}
}
catch(Exception e)
{
	System.out.println(e);
}%>

</body>
<br><br><br>
</body>
</html>