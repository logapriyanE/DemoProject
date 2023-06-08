<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
*{
    margin: 0;
    padding: 0%;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
    cursor: pointer;
}

body{
    height:100vh;
    width:100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background-image:url(image2.jpg);
    background-size:cover;
    background-position: center;
    background: linear-gradient rgba( 225,225,225,0.06);

}
form{
     position:absolute;
     top:30px;
    width:30rem;
    height: 45rem;
    display: flex;
     justify-content: center;
    flex-direction: column;
    background:rgba(225, 225, 255, 0.06);
    box-shadow: 0 8px 32 .0 rgba(31,38,135,.37);
    border-radius: 30px;
    border-left:1px solid rgba(225, 225, 255, 0.3);
    border-top:1px solid rgba(225, 225, 255, 0.3);
    
}

h2{
    font-size:50px;
    text-align:center;
    color:white;
    text-shadow: 2px 2px 4px rgba(0,0,0,.2);
    letter-spacing: 3px;
    margin-bottom: 5%;
    opacity:70%;

}
label{
    font-size:20px;
    color:white;
    margin-left:10%;
    opacity:80%;
    text-shadow: 2px 2px 4px rgba(0,0,0,.2);

}

input{
    width:80%;
    margin: 5% auto;
    margin-bottom: 8%;
    border: none;
    outline: none;
    background:transparent;
    color:white;
    border-bottom:1px solid rgba(225, 225, 255, 0.6);
    opacity:50%;
}

button{
    width:50%;
    margin: 3% auto;
    color:white;
    font-size: 15px;
    opacity: 70%;
    background:rgba(225, 225, 255, 0.06);
    padding:10px 30px;
    border: none;
    outline:none;
    border-radius: 20px;
    text-shadow: 2px 2px 4px rgba(225, 225, 255, 0.06);
    box-shadow: 3px 3px 5px rgba(31,38,135,.37);
    border-left: 1px solid rgba(225, 225, 255, 0.3);
    border-top:1px solid rgba(225, 225, 255, 0.3);

}

a{
    font-size:12px;
    text-align:center;
    color:white;
    opacity:70%;
}
header{
    border: none;
    outline: none;
    background:transparent;
    color:white;
    opacity:50%;

}
but{
  font-size:12px;
    text-align:center;
    color:white;
    opacity:70%;
}

</style>
</head>
<body>
<header>
<h6>CreatAccount </h6>
</header>
<div></div>
<form action="Register" method="post">
<br><br><br><br><br><br><br><br><br><br><br><br>
<label for ="text"> Firstname </label>
<input type= "text" name ="fname" id="text" placeholder="name" maxlength="20" >
<label for ="last"> lastname </label>
<input type= "text" name ="lname" id="last" placeholder="last" maxlength="20">
<label for="num"> Phone </label>
 <input type="number" name="pno" id="num" step="">
<label for="mail"> Email</label>
<input type="email" name="email" id="mail" required>
<label for="text"> UserName</label>
<input type="text" name="uname" id="us" required>
<label for="password">Password</label>
 <input type="password" name="pass" id="password" required>
<button type="submit">Submit </button>
<a href="NewFile.jsp" class="but"><button type="button" value="Login">Login</button></a>
</form>
</body>
</html>