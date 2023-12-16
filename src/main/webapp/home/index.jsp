<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<!-- <link href="../assets/css/layout.css" rel="stylesheet" type="text/css" media="all"> -->
<!-- Font Awesome -->
<!-- Bootstrap -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    crossorigin="anonymous" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
    crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.2/css/all.min.css"
    crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Trang chủ</title>
</head>
<body>
<div style="background: linear-gradient(180deg, #F5B5C0 0%, #DA3333 100%); background-repeat: no-repeat; background-size: cover;">
	
	<!-- Navigation -->
	<div class="header" id="header">
	<nav class="navbar navbar-expand-lg justify-content-between fixed-top bg-nav">
      <div class="container">
        <a href="#" class="navbar-brand">
          <img src="../assets/images/cntt.png" alt="">
        </a>
        <p class="text-white text-uppercase mb-0 icon-text">Nhóm 6<br><span class="text-white">Công nghệ web</span></p>

        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse nav-elements" id="navbarSupportedContent">
        	<form action="Servlet" method="post">
	          <ul class="navbar-nav m-auto">
		            <li class="nav-item nav-element">
		              <a class="nav-link active text-white nav-home" aria-current="page" href="#">TRANG CHỦ</a>
		            </li>
		            <li class="nav-item nav-element">
		              <a class="nav-link text-white nav-blogs" href="#teams-introduce">GIỚI THIỆU</a>
		            </li>
		            
		
			        <li>
			          <a class="nav-link text-white nav-blogs" href="login.jsp">ĐĂNG NHẬP</a>
			        </li>
			    </ul>
		  	</form>
<!--           <form class="search" role="search">
            <input class="" type="" placeholder="Tìm kiếm" aria-label="">
            <a href=""><i class="fa-solid fa-magnifying-glass"></i></a>
          </form> -->
          
        </div>
      </div>
    </nav>
    </div>
    <link rel="stylesheet" href="../assets/css/header.css"/>
	<!-- END Navigation -->
	
	
	<img src="../assets/images/cm9.png" alt="" class="decor-10" />
	<img src="../assets/images/cm5.png" alt="" class="decor-11" />
	<!-- PROJECT DESCRIPTION -->
	<div class="club-introduction" id="club-introduction">
    <div class="container" style="margin-top: 100px;">
	    <img src="../assets/images/Vector 4.png" alt="" class="vector-1">
	    <img src="../assets/images/Vector 5.png" alt="" class="vector-2">
      <div class="row">
        <div class="left-content col-lg-6">
          <div class="first-paragraph">
           	giới thiệu dự án
          </div>
<!--           <div class="second-paragraph">
            hệ thống chuyển đổi ngôn ngữ ký hiệu
          </div> -->
          <div id="teamIntroductionArea" class="teams-introduce-text d-flex col-lg-7 col-12" style="width: 555px;">
	          <div class="description mt-3" style="padding: 30px 25px 40px 25px;;">
	            Dự án blog cá nhân nhằm quản lý thông tin các thành viên trong nhóm<br><br>	
	            Là một sản phẩm của nhóm 6 ở học phần "Công nghệ Web" năm 2023, sản phẩm được xây dựng dựa trên các kiến thức
	            đã học về lập trình JSP, Serverlet theo mô hình MVC và có kết nối database. 
	          </div>
          </div>
          <!-- <div class="club_read_more mt-4">
            <a href="#">XEM THÊM</a>
          </div> -->
        </div>
        <div class="right-content col-lg-6">
          <!-- <iframe width="100%" height="100%" src="https://www.youtube.com/embed/Y9V3bgXbzi4"
            title="YouTube video player" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
            allowfullscreen>
          </iframe> -->
          <img src="../assets/images/anh.png" alt="anblop">
        </div>
      </div>
    </div>
  </div>
  <link rel="stylesheet" href="../assets/css/blog_introduction.css">
	<!-- END DESCRIPTION -->
	
	
	
	
	<!-- BEGIN THAY WRAPPER  -->
	  <!-- Teams-introduce start -->
  <div class="teams-introduce" id="teams-introduce">
  <img src="../assets/images/cm14.png" alt="" class="decor-14" />
    <img src="../assets/images/cm3.png" alt="" class="decor-9" />
    <img src="../assets/images/decor-8.png" alt="" class="decor-8" />
    <div class="container">

      <img src="../assets/images/cm8.png" alt="" class="decor-1" />
      <img src="../assets/images/cm2.png" alt="" class="decor-3" />
      <img src="../assets/images/decor-2.png" alt="" class="decor-2" />
      <div class="row text-center">
        <p class="fw-bold teams-title">GIỚI THIỆU NHÓM</p>
      </div>
      <div class="teams row">
        <div class="col-lg-5">
          <div class="wheel-icon col d-md-flex justify-content-around">
            <div class="circle">
              <div class="team-icon" style="--index: 1" data-index="1">
                <img
                  src="../assets/images/ava1.png"
                  alt=""
                  class="teams-icon-img"
                  style="--index: 1"
                />
              </div>
              <div class="team-icon" style="--index: 2" data-index="2">
                <img
                  src="../assets/images/ava2.png"
                  alt=""
                  class="teams-icon-img"
                  style="--index: 2"
                />
              </div>
              <div class="team-icon" style="--index: 3" data-index="3">
                <img
                  src="../assets/images/ava3.png"
                  alt=""
                  class="teams-icon-img"
                  style="--index: 3"
                />
              </div>
              <div class="team-icon" style="--index: 4" data-index="4">
                <img
                  src="../assets/images/ava4.png"
                  alt=""
                  class="teams-icon-img"
                  style="--index: 4"
                />
              </div>
            </div>
            <!-- <div class="row flex-row btn-rotate col-lg-auto justify-content-center align-content-center d-md-flex d-lg-none">
              <button class="btn-rotate-up col-1"><i class="fa-solid fa-caret-left"></i></button>
              <button class="btn-rotate-down col-1"><i class="fa-solid fa-caret-right"></i></button>
            </div> -->
            <div class="row btn-rotate col-lg-auto justify-content-center align-items-center d-none d-md-none d-lg-flex">
              <button class="btn-rotate-up d-flex justify-content-center align-items-center"><i class="fa-solid fa-caret-up"></i></button>
              <!-- <div class="line d-flex justify-content-center align-items-center">

              </div> -->
              <button class="btn-rotate-down d-flex justify-content-center align-items-center"><i class="fa-solid fa-caret-down"></i></button>
            </div>
          </div>
        </div>
        <div id="teamIntroductionArea" class="teams-introduce-text d-flex col-lg-7 col-12">
          <div class="p-4 team-all" style="--index: 1" data-index="1">
            <div class="team-text">
              <span class="team-name-1 text-uppercase">PHẠM TRẦN THANH TRÚC</span>
              <h1 class="my-3 text-uppercase">Sinh viên</h1>
              <p class="mb-4">
                “Hay buồn.”
              </p>
              <a class="mt-5 text-uppercase" href="../home/PersonalDetailServlet?id=102210237">see more</a>
            </div>
          </div>
          <div class="p-4 team-all" style="--index: 2" data-index="2">
            <div class="team-text">
              <span class="team-name-2">PHAN THÀNH NGÂN</span>
              <h1 class="my-3">Sinh viên</h1>
              <p class="mb-4">
                "Hay tập thể dục."
              </p>
              <a class="mt-5 text-uppercase" href="../home/PersonalDetailServlet?id=102210219">see more</a>
            </div>
          </div>
          <div class="p-4 team-all" style="--index: 3" data-index="3">
            <div class="team-text">
              <span class="team-name-3">TRƯƠNG QUANG LỘC</span>
              <h1 class="my-3">Sinh viên</h1>
              <p class="mb-4">
                “Ngày ngủ, đêm cày, thích nghe nhạc trap”
              </p>
              <a class="mt-5 text-uppercase" href="../home/PersonalDetailServlet?id=102210214">see more</a>
            </div>
          </div>
          <div class="p-4 team-all" style="--index: 4" data-index="4">
            <div class="team-text">
              <span class="team-name-4">THẦY MAI VĂN HÀ</span>
              <h1 class="my-3">Giảng viên hướng dẫn</h1>
              <p class="mb-4">
                “Là giảng viên khoa CNTT - DHBK, hay cho sinh viên điểm cao”
              </p>
              <a class="mt-5 text-uppercase" href="./index.jsp">see more</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <link rel="stylesheet" href="../assets/css/teams_introduce.css" />
  <link rel="stylesheet" href="../assets/css/responsive_teams_introduce.css" />
  <script src="../assets/scripts/teams_introduce.js"></script>
  <!-- Teams-introduce end -->
	<!-- END THAY WRAPPER  -->
	
	
<!-- Footer start -->
  <div class="footer text-white" id="footer">
    <div class="container w-100 h-auto mt-5 p-md-0">
      <div class="row footer-items justify-content-between">
        <div class="col-lg-3 col-sm-12 px-3 footer-item-logo-title text-lg-start text-center">
          <div class="row mb-3">
            <div class="col-lg-2">
              <img src="../imgs/hugoIcon.png" alt="" />
            </div>
            <div class="col-lg-10 d-lg-flex flex-wrap">
              <h5 class="text-uppercase fw-bold mt-3 mt-lg-0">bai tap nhom 6<br /></h5>
              <span class="text-uppercase">cong nghe web</span>
            </div>
          </div>
          <div class="row footer-item-content">
          </div>
        </div>
        <div class="col-lg-2 col-sm-12 col-md-4 mt-3 mt-lg-0 footer-item px-0 text-lg-start text-center about-us">
          <h5 class="text-uppercase mb-0 mb-lg-3">About us</h5>
        </div>
        <div class="col-lg-3 col-sm-12 col-md-4 mt-3 mt-lg-0 footer-item ps-lg-4 p-md-0 text-lg-start text-center">
          <h5 class="text-uppercase mb-0 mb-lg-3 footer-contact">contact</h5>
          <p><a href="mailto:hugoclub.dut@gmail.com" class="text-white text-decoration-none">Email:
              abc@gmail.com</a></p>
          <p><a href="tel:+00 151515" class="text-white text-decoration-none">Phone number: +84 12345678</a></p>
          <div class="row mt-3">
            <ul class="list-inline d-flex text-lg-start justify-content-center justify-content-lg-start">
              <li>
                <a href="https://www.facebook.com/okiaaido/" target="_blank"
                  class="list-inline-item me-2 d-flex justify-content-center align-items-center text-decoration-none"><i
                    class="fa-brands fa-facebook-f"></i></a>
              </li>
              <li>
                <a href="https://www.instagram.com/" target="_blank"
                  class="list-inline-item me-2 d-flex justify-content-center align-items-center text-decoration-none"><i
                    class="fa-brands fa-instagram"></i></a>
              </li>
              <li>
                <a href="https://www.youtube.com/" target="_blank"
                  class="list-inline-item me-2 d-flex justify-content-center align-items-center text-decoration-none"><i
                    class="fa-brands fa-youtube"></i></a>
              </li>
            </ul>
          </div>
        </div>
        <div class="col-lg-2 col-sm-12 col-md-4 mt-3 mt-lg-0 footer-item footer-language text-lg-start text-center">
          <h5 class="text-uppercase mb-0 mb-lg-3">Language</h5>
          <div class="lang-menu">
            <div class="selected-lang d-flex align-items-center">
              <img src="../imgs/united-states.png" alt="" class="me-2">
              <p class="mb-0">English</p>
              <i class="fa-sharp fa-solid fa-caret-down"></i>
            </div>
            <ul class="lang-selection">
              <li value="en" class="d-flex align-items-center lang-option">
                <img src="../imgs/united-states.png" alt="" class="me-2">
                <p class="mb-0">English</p>
              </li>
              <!-- <li value="vi" class="d-flex align-items-center lang-option">
                <img src="../imgs/vietnam.png" alt="" class="me-2">
                <p class="mb-0">Vietnamese</p>
              </li> -->
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <link rel="stylesheet" href="../assets/css/footer.css" />
  <!-- Footer end -->

	
	<!-- JAVASCRIPTS -->
	<script src="../assets/scripts/jquery.min.js"></script>
	<script src="../assets/scripts/jquery.backtotop.js"></script>
	<script src="../assets/scripts/jquery.mobilemenu.js"></script>
	<script src="../assets/scripts/jquery.flexslider-min.js"></script>
	
</div>
</body>
</html>