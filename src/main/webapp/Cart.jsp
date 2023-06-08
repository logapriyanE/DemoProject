<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" 
  href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css>
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<style type="text/css">
#cart-container table{
    border-coollapse: collapse;
    width:100%;
    table-layout: fixed;

}
#cart-container table thread{
    font-width: 700;
}
#cart-container table thread td{
    background: #fd8c66;
    color:#fff;
    border: none;
    padding: 6px 0;
}
#cart-container table td{
    border:1px soild #b6b3b3;
    text-align:center;

}
#cart-container table td:nth-child(1){
    width:100px;

}
#cart-container table td:nth-child(2),
#cart-container table td:nth-child(3){
    width:200px;
}
#cart-container table td:nth-child(4),
#cart-container table td:nth-child(5),
#cart-container table td:nth-child(6){
  width:170px;
}
#cart-container table tbody img{
    width: 100px;
    height:80px;
    object-fit: cover;
}

</style>
</head>
<body>
<section id="blog-home" class="pt-s mt-s container">
    <h2 class="font-weight-bold" pt-s>Cart</h2>
    <hr>
</section>

<section id="cart-container" class="container" my-5>
    <table width=100%>
        <thread>
            <tr>
                <td> Remove </td>
                <td> Image </td>
                <td> Product </td>
                <td> Price </td>
                <td> Quantity </td>
                <td> Total </td>
            </tr>
        </thread>

        <tbody>
            <tr>
                <td><a href="#"><i class="fas fa-trash-alt"></i></td>
                    <td><img src="b1.jpeg" alt=""></td>
                    <td><h5>Handbag Fringilla
                        </h5>
                    </td>
                    <td><h5>$65</h5></td>
                    <td><input class="w-25 pl-1" values="1" type="number"></td>
                    <td><h5>$130</h5></td>
            </tr>
        </tbody>
    </table>
</section>
</body>
</html>