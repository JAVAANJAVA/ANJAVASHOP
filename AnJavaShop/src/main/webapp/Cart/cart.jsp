<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/Index/header.jsp" %>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' type='text/css' media='screen' href='cart.css'>
    <script src='main.js'></script>
</head>
<body>
<div class="wrapper">
    <div class="small-container cart-page">
        <table>
            <tr>
                <th>Product</th>
                <th>Quantity</th>
                <th>Subtotal</th>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                      <img src="b.png">
                      <div>
                          <p>Product name</p>
                          <small>Price:$50.00</small>
                          <br>
                          <a href="#">Remove</a>
                      </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <!--토탈값 임시로한거라 나중에 쿼리문 만들어서 넣으면 될듯-->
                <td>$50.00</td>
            </tr>
            <tr>
                <td>
                    <div class="cart-info">
                      <img src="b.png">
                      <div>
                          <p>Product name</p>
                          <small>Price:$50.00</small>
                          <br>
                          <a href="#">Remove</a>
                      </div>
                    </div>
                </td>
                <td><input type="number" value="1"></td>
                <!--토탈값 임시로한거라 나중에 쿼리문 만들어서 넣으면 될듯-->
                <td>$50.00</td>
            </tr>
        </table>
        <div class="total-price">
            <table>
                <tr>
                    <td>Subtotal</td>
                    <td>$50.00</td>
                </tr>
                <tr>
                    <td>Tax</td>
                    <td>$30.00</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>$130.00</td>
                </tr>
            </table>
        </div>
    </div>
</div>
<%@ include file="/Index/footer.jsp" %>
</body>
</html>