<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Đăng nhập</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../assets/css/login.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- <style>
.input{
	display: flex;
    justify-content: center;
	
}
.txt{
	color: #000000;
}
</style> -->
</head>
<body>


<!-- Top Background Image Wrapper -->
<!-- <div class="bgded overlay" style="background-image:url('../assets/images/backgroundimage.jpg');">  -->
<!-- <div style="background: linear-gradient(180deg, #F5B5C0 0%, #DA3333 100%); background-repeat: no-repeat; background-size: cover;">
  <div class="wrapper row1">
    <header id="header" class="hoc clear"> 
      <div id="logo" class="fl_left">
        <h1>Website Group</h1>
      </div>
    </header>
  </div>
  <div id="pageintro" class="hoc clear"> 
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
  </div>
</div> -->

<div class="login-container">
    <h2 style="color: red;">Login</h2>
    <form action="../home/LoginServlet" method="post">
        <div class="form-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
        </div>
        <div class="form-group">
            <button type="submit" name="loginRequest">Login</button>
        </div>
    </form>
    <div class="register-link">
        <p><a href="index.jsp">Về trang chủ </a></p>
    </div>
</div>

<!-- JAVASCRIPTS -->
<script src="../assets/scripts/jquery.min.js"></script>
<script src="../assets/scripts/jquery.flexslider-min.js"></script>
</body>
</html>