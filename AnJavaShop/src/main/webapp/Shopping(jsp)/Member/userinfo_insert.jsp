<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="">
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel='stylesheet' href='register.css'>
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css'>
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
</head>
<body>
<!--header section starts-->
<header class="header">
    <a href="/Shopping(jsp)/Index/index.jsp" class="logo"><i class='bx bxs-shopping-bags'></i>JAVAANJAVA</a>
<script>
	function send(){
		if(register.id.value==""){
			alert("아이디를 입력해주세요");
			register.id.focus();
			return;
		}else if(!checkEngNum(register.id.value)){
			alert("아이디는 영문, 숫자만 입력가능합니다");
			register.id.focuse();
			return;
		}
		if(register.passwd.value==""){
			alert("비밀번호를 입력해주세요");
			register.passwd.focus();
			return;
		}else if(!checkEngNum(register.passwd.value)){
			alert("비밀번호는 영문, 숫자만 입력가능합니다");
			register.passwd.focuse();
			return;
		}
		if(register.passwd.value!=register.repasswd.value){
			alert("비밀번호가 일치하지 않습니다");
			register.repasswd.focus();
			return;
		}
		if(register.zipcode.value==""){
			alert("우편번호를 입력해주세요");
			register.zipcode.focus();
			return;
		}
		if(register.address.value==""){
			alert("주소를 입력해주세요");
			register.address.focus();
			return;
		}
		if(register.detailaddress.value==""){
			alert("상세주소를 입력해주세요");
			register.detailaddress.focus();
			return;
		}
		if(!register.agree.checked){
			alert("회원가입에 동의 해주세요");
			return;
		}
		register.submit();
	}
	function checkEngNum(str){
		lower_str = str.toLowerCase();
		
		for(i=0; i<lower_str.length; i++){
			ch = lower_str.charAt(i);
			if(((ch < 'a') || (ch > 'z')) && ((ch < '0') || (ch > '9'))){
				return 0;
			}
			return 1;
		}
	}
</script>
</header>

<div class="wrapper">
    <div class="form-box register">
        <h1>Registration</h1>
        <form name="register" method="post" action="/Shopping(jsp)/Member/userinfo_insert.do" >
            <div class="input-box">
                <span class="icon"><i class='bx bxs-user' ></i></span>
                <input name="id" type="text" placeholder="UserName" value="" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-lock-alt'></i></span>
                <input name="passwd" type="password" placeholder="Password" value="" required>
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-lock'></i></span>
                <input name="repasswd" type="password" placeholder="Re Password" value="" required>
            </div> 
            <div class="input-box">
                <span class="icon"><i class='bx bxs-envelope' ></i></span>
                <input name="zipcode" type="text" placeholder="Zipcode" value="" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-building' ></i></span>
                <input name="address" type="text" placeholder="Address" value="" required>   
            </div>
            <div class="input-box">
                <span class="icon"><i class='bx bxs-building-house' ></i></span>
                <input name="detailaddress" type="text" placeholder="Detail Address" value="" required>   
            </div>
            <div class="remember-forgot">
                <label><input type="checkbox" name="agree">Agree to register</label>
            </div>
                <button type="button" class="btn" onclick="send()">Sign up</button>
            <div class="register-link">
            <p>Already have an account?
                <a href="/Shopping(jsp)/Member/userlogin.do">Login</a>
            </p>

        </div>
    </form>
</div>
</div>
<!--header section ends-->
<!--custom js file lick-->
<script src='script.js'></script>
</body>
</html>