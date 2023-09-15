<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="shop.member.*"%>
<%
	MemberDTO dto = (MemberDTO)session.getAttribute("userinfo");
%>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Home</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='/Style/style.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css'>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    
</head>
<body>
<!--header section starts-->

<header class="header">
    <a href="/Index/index.jsp" class="logo"><i class='bx bxs-shopping-bags'></i>JAVAANJAVA</a>
    
    <nav class="navbar">
        <ul>
          <li><a href="/Index/index.jsp">shop</a></li>
          <li><a href="#">categories</a>
                <ul >
                    <li><a href="#">beta</a></li>
                    <li><a href="#">beta</a></li>
                    <li><a href="#">beta</a></li>
                </ul>
        </li>    
          <li><a href="#">qnA</a>
                <ul >
                    <li><a href="#">beta</a></li>
                    <li><a href="#">beta</a></li>
                    <li><a href="#">beta</a></li>
                </ul>
          </li>
        </ul>
    </nav>
    <div class="icons">
        <div class="bx bx-menu" id="menu-btn"></div>
        
        
        <%if(session.getAttribute("userinfo")==null){ %>
        	<a href="/Member/userinfo_insert.do"><div class="bx bx-user-plus" id="cart-btn"></div></a>
        	<a href="/Member/userlogin.do"><div class="bx bx-log-in" id="login-btn"></div></a>
        <%}else{%>
        	<a href="/Member/userinfo_insert.do"><div class="bx bx-group"></div></a>
        	<a href="/Cart/cart.jsp"><div class="bx bx-cart" id="cart-btn"></div></a>
        	<a href="/Member/userlogout.do"><div class="bx bx-log-out" id="login-btn"></div></a>
        	
        <%}%>
    </div>

    <form name="search" method="post" action="" class="search-form">
        <input type="search"  placeholder="search here...">
        <label for="search-box" class="bx bx-search"></label>
    </form>
</header>
</body>
</html>
