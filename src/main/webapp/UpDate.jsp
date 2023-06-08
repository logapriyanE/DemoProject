<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
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

but{
  font-size:12px;
    text-align:center;
    color:white;
    opacity:70%;
}

</style>
</head>
<body>
<form action="UpDate" method="post">
<h2>UpDate Products </h2>
<br><br><br>
<label for ="text"> UpDate Book name </label>
<input type= "text" name ="bname" id="text" value="<%=request.getParameter("name") %>" >
<label for ="last">UpDate Categry </label>
<input type= "text" name ="cname" id="last" value="<%=request.getParameter("cat") %>" >
<label for="text"> UpDate Image url </label>
 <input type="text" name="url" id="num" value="<%=request.getParameter("img") %>">
<label for="text"> UpDate Price</label>
<input type="text" name="pname" id="us" value="<%=request.getParameter("price") %>" required>
<button type="submit">UpDate </button>
<a href="Admin.jsp" class="but"><button type="button" value="Back to Allproducts">Back to Addproducts</button></a>
</form>

</body>
</html>