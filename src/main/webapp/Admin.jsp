<%@page import="project.ProductDao"%>
<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%@page import="project.Product"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    ProductDao pd=new ProductDao(DriverManager.getConnection("jdbc:mysql://localhost:3306/productdetiles","root","loga1234"));
    List<Product> pro=pd.getAllProduct();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
  href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css>
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <style type="text/css">
  * {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: 'Spartan', sans-serif;
}

h1 {
	font-size: 50px;
	line-height: 64px;
	color: black #222;
}

h2 {
	font-size: 46px;
	line-height: 54px;
	color: #222;
}

h4 {
	font-size: 20px;
	color: #222;
}

h6 {
	font-size: 12px;
	font-weight: 7000;
}

p {
	font-size: 16px;
	color: #465b52;
}

.section-p1 {
	padding: 40px 80px;
}

.section-m1 {
	margin: 40x 0;
}
#add{
padding-left: 80%;
}
#add button{
font-size: 16px;
font-weight: 600;
padding: 15px 30px;
color: #000;
background-color: lime;
border-radius: 4px;
cursor: pointer;
border: none;
outline: none;
transition: 0.2s;
}
body {
	width: 100%;
}

#header {
	display: flex;
	align-items: center;
	justify-content: space-between;
	padding: 20px 80px;
	background-color: #E3E6F3;
	box-shadow: 0 5px 15px rgba(0, 0, 0, 0.06);
	z-index: 999;
	position: sticky; top : 0;
	left: 0;
	top: 0;
}

#navbar {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

#navbar li {
	list-style: none;
	padding: 0 20px;
}

#navbar li a {
	text-decoration: none;
	font: 16px;
	font-weight: 600;
	color: #1a1a1a;
	transition: 0.3s ease;
}

#navbar li a:hover {
	color: green;
	font-family: monospace;
}

#navbar li a.ac:active::after {
	content: "";
	width: 30%;
	height: 2px;
	background: #088178;
	position: absolute;
	bottom: -4px;
	left: 20px;
}
  
#product1{
text-align: center;
}
#product1 .pro-container{
display: flex;
justify-content: space-between;
padding-top: 20px;
flex-wrap: wrap;
}
#product1 .pro{
width: 23%;
min-width: 250px;
padding: 10px 12px;
border:1px solid #cce7d0;
border-radius: 25px;
cursor: pointer;
box-shadow: 20px 20px 30px rgba(0,0,0,0.02);
margin: 15px 0;
transition-proprety:20px 10px #C0C0C0;
position: relative;
}
#product1 .pro:hover{
box-shadow: 20px 20px 30px rgba(0,0,0,0.02);
}
#product1 .pro img{
width: 100%;
border-radius: 20px;
}
#product1 .pro .des{
text-align: start;
padding: 10px 0;
}
#product1 .pro .des span {
	color: #606063;
	font-size: 12px;
}
#product1 .pro .des h5{
padding-top: 7px;
color: #1a1a1a;
font-size: 14px;
}
#product1 .pro .des i{
font-size: 15px;
color: rgb(234,181,25);
}
#product1 .pro .des h4{
padding-top: 7px;
font-size: 15px;
font-weight: 700;
color: #088178;
}
#product1 .pro .fa-pen-to-square{
position: absolute;
bottom: 30px;
right: 80px;
font-size: 23px;
color: lime;
}
#product1 .pro .fa-trash{
position: absolute;
bottom: 30px;
right: 30px;
font-size: 23px;
color:blue;
}
  
  </style>
</head>
<body>
<section id="header">
    <%--<a href="#"><img alt="" src="logo.jpg" class="logo"></a> --%>
    <h4>BOOK</h4>
     <div>
     <ul id="navbar">
     <li><a href="Home.jsp">Home</a></li>
     <li><a href="#product1">Shop</a></li>
     <li><a href="#">About</a></li>
     <li><a href="NewFile.jsp">Login</a></li>
     <li><a href="AdminLogin.jsp">Admin</a></li>
     <form action="Search">
         <input type="text" name="sname" placeholder="search......">
           <button type="submit"><i class="fa fa-search"></i></button>
           
           </form>
        
     </ul>
     </div>
</section>
 
  <section id="product1" class="section-p1">
  <h2>All Procuct</h2>
   <div id=add><button><a href="AddProducts.jsp">AddProducts</a></button>
  </div>
  <div class="pro-container">
  <%
  if(!pro.isEmpty()){
	  for(Product p:pro){
  %>
  <div class="pro">
  <img alt="image" src="<%=p.getImage()%>">
  <div class="des">
  <span><%=p.getCategry()%></span>
  <h5><%=p.getBookname()%></h5>
  <div class="star">
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
  </div>
  <h4>₹<%=p.getPrice()%></h4>
  </div>
  <a href='UpDate.jsp?name=<%=p.getBookname()%>&cat=<%=p.getCategry()%>&img=<%=p.getImage()%>&price=<%=p.getPrice() %>'><i class="fa-solid fa-pen-to-square"></i></a>
  <a href='Admin?name=<%=p.getBookname()%>'><i class="fa-sharp fa-solid fa-trash"></i> </a>
  </div>
  <%}}  %>
  
  </div>
  </section>

</body>
</html>