<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--footer section starts-->
<section class="footer">
    <div class="box-container">
        
            <div class="share">
                <a href="https://github.com/JAVAANJAVA/ANJAVASHOP"><i class='bx bxl-github'></i></a>
                <a href="#"><i class='bx bxl-instagram'></i></a>
                <a href="#"><i class='bx bxl-twitter'></i></a>
                <a href="#"><i class='bx bxl-facebook'></i></a>
                <a href="#"><i class='bx bxl-youtube'></i></a>
            </div>
            <div class="box">
            <p>Copyright © 2023 - All right reserved by ACME Industries Ltd</p>
            <p>Made by Team J.A.J</p>
            </div>
    </div>
</section>
<!--footer section ends-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script>
    $(document).ready(function(){
        $('.menu-btn').click(function(){
            $('.side-bar').addClass('active');
            $('.menu-btn').css("visibility","hidden");
        });
        $('.close-btn').click(function(){
            $('.side-bar').removeClass('active');
            $('.menu-btn').css("visibility","visible");
        });
        $('.sub-btn').click(function(){
            $(this).next('.sub-menu').slideToggle();
            $(this).find('.dropdown').toggleClass('rotate');
        });
    })
</script>