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
button.normal{
font-size: 16px;
font-weight: 600;
padding: 15px 30px;
color: #000;
background-color: #fff;
border-radius: 4px;
cursor: pointer;
border: none;
outline: none;
transition: 0.2s;
}
button.white{
font-size: 13px;
font-weight: 600;
padding: 11px 30px;
color: white;
background-color: transparent;
cursor: pointer;
border:1px solid #fff;
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
/* home page*/
#hero {
	background-image: url("book1.jpg");
	opacity:1;
	height: 90vh;
	width: 100%;
	background-size: cover;
	background-position: top 60% right 40%;
	padding: 0 80px;
	display: flex;
	align-items: flex-start;
	justify-content: center;
	flex-direction: column;
}

#hero h4 {
	padding-bottom: 15px;
}

#hero h1 {
	color: green;
}

#hero p {
	color: red;
}

#hero button {
	color: maroon;
	border: 0;
	padding: 14px 80px 14px 45px;
	cursor: pointer;
	font-weight: 700;
}
#feature{
display: flex;
align-items: center;
justify-content: space-between;
flex-wrap: wrap;
}
#feature .fe-box{
width: 180px;
text-align: center;
padding: 25px 0px;
box-shadow: 20px 20px 34px rgba(0,0,0,0.03);
border: 1px solid #cce7d0;
border-radius: 4px;
margin:15px;
}
#feature .fe-box:hover {
	box-shadow: 10px 10px 54px rgba(70,62,221,0.1);
}
#feature .fe-box h6{
display:inline-block;
padding: 9px 8px 6px 8px;
line-height: 1;
border-radius: 4px;
color: #088178;
background-color: #fddde4;
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
#product1 .pro .fa-cart-plus{
position: absolute;
bottom: 30px;
right: 30px;
font-size: 23px;
color: lime;
}
#product1 .pro .fa-bag-shopping{
position: absolute;
bottom: 30px;
right: 80px;
font-size: 23px;
color: aqua;
}
#banner{
display: flex;
flex-direction: column;
justify-content: center;
align-items: center;
text-align: center;
background-image: url("bn.jpg");
width: 100%;
height: 40vh;
background-size: cover;
background-position: center;
}
#banner h4{
color: #fff;
font-size: 25px;
}
#banner h2{
color: white;
font-size: 40px;
padding: 10px 0;
}
#banner h2 span {
	color: red;
}
#banner button:hover {
	background-color: #088178;
	color: #fff;
}
#sm-banner{
display: flex;
justify-content: space-between;
flex-wrap: wrap;
}
#sm-banner .banner-box{
display: flex;
flex-direction: column;
justify-content: center;
align-items: flex-end;
background-image: url("sbn.jpg");
min-width: 580px;
height: 50vh;
background-size: cover;
background-position: center;
padding: 20px;
}
#sm-banner .box2{
background-image: url("sbn1.jpg");
}
#sm-banner h4{
color: white;
font-size: 17px;
font-weight: 600;
}
#sm-banner h2{
color: white;
font-size: 30px;
font-weight: 800;
}
#sm-banner span{
color: white;
font-size: 14px;
font-weight: 400;
padding: 10px;
}
#sm-banner .banner-box:hover button {
	background: #088178;
	border: 1px solid #088178;
}
/*
.container .input{
border:0;
outline:none;
color:#8b7d77;}

.search_wrap{
width:500px;
margin:30px auto;}

.search_wrap .search_box{
position:relative;
width:500px;
height:60px;}

.search_wrap .search_box .input{
position:absoult;
top:0;
left:0;
width:100;
height:100%;
padding:10px 20px;
border_radius:3px;
font-size:18px;}

.search_wrap .search-box .btn{
position}
*/

</style>
<script type="text/javascript">
let  searchFrom=document.querySelector(".sh")
document.querySelector('search-btn').onclick =() =>{
    searchFrom.classList.toggle('active');
}
</script>
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
  <section id="hero">
   <h4>Trade-in-offer</h4>
  <h2>Supre value deals</h2>
  <h1>On all products</h1>
  <p>Save more with coupans & up to 70% off!</p>
  <button>Shop Now</button>
  </section>
  <section id="feature" class="section-p1">
  <div class="fe-box">
  <img alt="image" src="f1.jpg">
  <h6>Free Shipping</h6>
  </div>
  <div class="fe-box">
  <img alt="image" src="f2.jpg">
  <h6>Online Odder</h6>
  </div>
  <div class="fe-box">
  <img alt="image" src="f4.jpg">
  <h6>Promotions</h6>
  </div>
  <div class="fe-box">
  <img alt="image" src="f5.jpg">
  <h6>Happay sell</h6>
  </div>
  <div class="fe-box">
  <img alt="image" src="f6.jpg">
  <h6>F24/7 Support</h6>
  </div>
  
  </section>
  <section id="product1" class="section-p1">
  <h2>Featured Products</h2>
  <p>Summer Collection New Books</p>
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
   <a href=""><i class="fa-solid fa-bag-shopping"></i></a>
  <a href="AddtoCart?<%=p.getBookname()%>"><i class="fa-solid fa-cart-plus"></i> </a>
  </div>
  <%}}  %>
 
  
  </div>
  </section>
  <section id="banner" class="section-m1">
  <h4>Books Exchanging Services</h4>
  <h2>Up to<span>70% off</span>-For All Exchanging Books </h2>
  <button class="normal">Explore More</button>
  
  </section>
    <section id="product1" class="section-p1">
  <h2>New Arrivals</h2>
  <p>Summer Collection New Books</p>
  <div class="pro-container">
   <%
  if(!pro.isEmpty()){
	  for(Product p1:pro){
  %>
  <div class="pro">
  <img alt="image" src="<%=p1.getImage()%>">
  <div class="des">
  <span><%=p1.getCategry()%></span>
  <h5><%=p1.getBookname()%></h5>
  <div class="star">
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
    <i class="fa-regular fa-star"></i>
  </div>
  <h4>₹<%=p1.getPrice()%></h4>
  </div>
  <a href=""><i class="fa-solid fa-bag-shopping"></i></a>
  <a href="AddtoCart?<%=p1.getBookname()%>"><i class="fa-solid fa-cart-plus"></i> </a>
  </div>
  <%}}  %>

  </div>
  </section>
     <section id="sm-banner" class="section-p1">
    <div class="banner-box">
    <h4>Crazy deals</h4>
    <h2>Buy 1 Get 1 free</h2>
    <span>The Best Classic books is on sale at cara</span>
    <button class="white">Learn more</button>
    </div>
    <div class="banner-box box2">
    <h4>Next Month</h4>
    <h2>UP Comming books</h2>
    <span>The Best Classic books is on sale at cara</span>
    <button class="white">Collection</button>
    </div>
    </section>    

</body>
</html>













