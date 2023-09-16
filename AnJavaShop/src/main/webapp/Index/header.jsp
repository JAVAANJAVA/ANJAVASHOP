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
  <!--메뉴버튼-->
      
<div class="side-bar">
    <header>
        <div class="close-btn">
            <i class='bx bx-x'></i>
        </div>
    </header>
    <!--메뉴아이템-->
    <div class="menu">
        <div class="item"><a class="sub-btn">브랜드패션
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
        <div class="item"><a class="sub-btn">패션의류/잡화/뷰티
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
        <div class="item"><a class="sub-btn">유아동
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
        <div class="item"><a class="sub-btn">식품/생필품
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
        <div class="item"><a class="sub-btn">홈데코/취미/반려
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
        <div class="item"><a class="sub-btn">컴퓨터/디지털/가전
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
        <div class="item"><a class="sub-btn">스포츠/건강/렌탈
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
        <div class="item"><a class="sub-btn">자동차/공구
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
        <div class="item"><a class="sub-btn">여행/도서/티켓/쿠폰
            <i class='bx bxs-chevron-right dropdown'></i>
        </a>
        <div class="sub-menu">
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
            <a href="" class="sub-item">Beta</a>
        </div>
    </div>
    </div>
</div>
<!--header section starts-->

<header class="header">
    <a href="/Index/index.jsp" class="logo"><i class='bx bxs-shopping-bags'></i>JAVAANJAVA</a>
    <div class="menu-btn">
        <i class='bx bx-menu'></i>
       </div>
    <div class="icons">
       
        <%if(session.getAttribute("userinfo")==null){ %>
            <a href="/Member/userlogin.do"><div class="bx bx-log-in" id="login-btn"></div></a>
        	<a href="/Member/userinfo_insert.do"><div class="bx bx-user" id="cart-btn"></div></a>
        	<a href="/Cart/cart.jsp"><div class="bx bx-cart" id="cart-btn"></div></a>
        <%}else{%>
            <a href="/Member/userlogout.do"><div class="bx bx-log-out" id="login-btn"></div></a>
        	<a href="/Member/userinfo_insert.do"><div class="bx bx-user"></div></a>
        	<a href="/Cart/cart.jsp"><div class="bx bx-cart" id="cart-btn"></div></a>
        	
        <%}%>
    </div>

    <form name="search" method="post" action="" class="search-form">
        <input type="search"  placeholder="search here...">
        <label for="search-box" class="bx bx-search"></label>
    </form>
</header>
</body>
</html>
