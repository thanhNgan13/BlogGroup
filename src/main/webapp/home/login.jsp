<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng nhập</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../assets/css/layout.css" rel="stylesheet" type="text/css" media="all">
<style>
.input{
	display: flex;
    justify-content: center;
	
}
.txt{
	color: #000000;
}
</style>
</head>
<body id="top">

	
<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
    <div class="fl_right">
      <ul>
        <li><a href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
      </ul>
    </div>
  </div>
</div>

<!-- Top Background Image Wrapper -->
<div class="bgded overlay" style="background-image:url('../assets/images/backgroundimage.jpg');"> 
  <!--  -->
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <!--  -->
      <div id="logo" class="fl_left">
        <h1>Website Group</h1>
      </div>
    </header>
  </div>
  <div id="pageintro" class="hoc clear"> 
    <!--  -->
    <div class="flexslider basicslider">
      <ul class="slides">
        <li>
          <article>
            <h3 class="heading">ĐĂNG NHẬP</h3> 
            <form action="../home/LoginServlet" method="post">
            <div class="input">
              Tên đăng nhập: <input class="txt" type="text" name="username"></input>
              </div>
              <br>
              <div class="input">
                   Mật khẩu: <input class="txt" type="password" name="password"></input>
            </div>
            
            <input class="btn inverse" type="submit" value="Đăng nhập"/>
            </form>
            <footer><a class="btn inverse" href="index.jsp">Về trang chủ</a></footer>
          </article>
        </li>
      </ul>
    </div>
    <!--  -->
  </div>
  <!--  -->
</div>


<!-- JAVASCRIPTS -->
<script src="../assets/scripts/jquery.min.js"></script>
<script src="../assets/scripts/jquery.flexslider-min.js"></script>
</body>
</html>