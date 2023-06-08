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
    background-image:url(image1.jpg);
    background-size:cover;
    background-position: center;
    background: linear-gradient rgba( 225,225,225,0.06);

}
form{
    width:25rem;
    height: 28rem;
    display: flex;
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
    opacity:80%;
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
</style>
<script type="text/javascript"  src="https://cdn.jsdelivr.net/npm/sweetalert2@11">
function myFunction() {

	var user = document.getElementById("name").value;
	var pass = document.getElementById("password").value;
	if (user == "" || user == null) {
		Swal.fire({
			  icon: 'error',
			  title: 'Oops...',
			  text: 'Something went wrong!',
			  footer: '<a href="">Why do I have this issue?</a>'
			})
		return false;
	}
	if (pass == "" || pass == null) {
		alert("please enter pass");
		return false;
	}

}
</script>
</head>
<body>
   <form action="Login" method="post" onsubmit="return myFunction()">
        <h2>LOGIN</h2>
        <label>User Name</label>
        <input type="text" name="name" id="name">
        <label>password</label>
        <input type="password" name="password" id="password">
        <button type="submit">login</button>
        <a href="ForGetPassword.jsp">ForGetpasswoed</a>
        <br>
        <a href="Register.jsp">Create account</a>
    </form>

</body>
</html>