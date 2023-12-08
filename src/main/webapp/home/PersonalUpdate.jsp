<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@page language="java" import="model.bean.Member"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<% Member member = (Member)request.getAttribute("memberInfor"); %>

<title name="name"><%=member.getName()%></title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="../assets/css/layout.css" rel="stylesheet" type="text/css"
	media="all">
</head>
<body id="top">

	<div class="wrapper row0">
		<div id="topbar" class="hoc clear">
			<div class="fl_left">
				<ul>
					<li><i class="fa fa-phone"></i><%=member.getPhone()%></li>
					<li><i class="fa fa-envelope-o"></i> <%=member.getEmail()%></li>
				</ul>
			</div>
			<div class="fl_right">
				<ul>
					<li><a href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
					<li><a href="PersonalUpdateServlet?id=<%=member.getId()%>">Trang
							cá nhân</a></li>
					<li><a href="login.jsp">Đăng xuất</a></li>
				</ul>
			</div>
			<!-- ################################################################################################ -->
		</div>
	</div>
	<!-- Top Background Image Wrapper -->
	<div class="bgded overlay"
		style="background-image: url('images/backgroundimage.jpg');">
		<!-- ################################################################################################ -->
		<div class="wrapper row1">
			<header id="header" class="hoc clear">
				<!-- ################################################################################################ -->
				<div id="logo" class="fl_left">
					<h1>Thông tin chi tiết</h1>
				</div>

				<!-- ################################################################################################ -->
			</header>
		</div>

		<!-- ################################################################################################ -->
	</div>
	<!-- End Top Background Image Wrapper -->
	<form action="Update" method="post">
		<input type="hidden" value="<%=member.getId()%>" name="id" />
		<div class="wrapper row3">
			<main class="hoc container clear">
				<!-- main body -->
				<!-- ################################################################################################ -->
				<div class="content">
					<!-- ################################################################################################ -->
					<h1>Giới thiệu</h1>
					<img class="imgr borderedbox inspace-5"
						src="<%=member.getImage()%>" alt="">
					<textarea name="content" rows="20" cols="70"><%=member.getContent()%></textarea>
					<br>
					<br>
					<div id="comments">
						<h2>Thông tin cá nhân</h2>
						<ul>
							<li>
								<article>
									<header>
										<figure class="avatar">
											<img src="../images/demo/avatar.png" alt="">
										</figure>
										<address>Họ tên:</address>
										<input type="text" value="<%=member.getName()%>"
											name="name" />
									</header>
								</article>
							</li>
							<li>
								<article>
									<header>
										<figure class="avatar">
											<img src="../images/demo/avatar.png" alt="">
										</figure>
										<address>Ngày sinh:</address>
										<input type="date" value="<%=member.getBirthday()%>"
											name="birthday" />
									</header>
								</article>
							</li>
							<li>
								<article>
									<header>
										<figure class="avatar">
											<img src="../images/demo/avatar.png" alt="">
										</figure>
										<address>Điện thoại:</address>
									</header>
									<div class="comcont">
										<input type="text" value="<%=member.getPhone()%> "
											name="phone" />
									</div>
								</article>
							</li>
							<li>
								<article>
									<header>
										<figure class="avatar">
											<img src="../images/demo/avatar.png" alt="">
										</figure>
										<address>Email:</address>
									</header>
									<div class="comcont">
										<input type="email" value="<%=member.getEmail()%>"
											name="email" />
									</div>
								</article>
							</li>
							<li>
								<article>
									<header>
										<figure class="avatar">
											<img src="../images/demo/avatar.png" alt="">
										</figure>
										<address>Địa chỉ:</address>
									</header>
									<div class="comcont">
										<input type="text" value="<%=member.getAddress()%>"
											name="address" />
									</div>
								</article>
							</li>
						</ul>

					</div>
					<!-- ################################################################################################ -->
				</div>
				<!-- ################################################################################################ -->
				<!-- / main body -->
				<div class="clear"></div>
			</main>
		</div>
		<p class="center">
			<input class="btn inverse" type="submit" value="Cập nhật" />
		</p>
	</form>
	<div class="wrapper row4 bgded overlay"
		style="background-image: url('');">
		<footer id="footer" class="hoc clear">
			<!-- ################################################################################################ -->
			<h3 class="heading">Bài tập nhóm Công nghệ Web</h3>
			<nav>
				<ul class="nospace inline pushright uppercase">
					<li><a href="index.jsp"><i class="fa fa-lg fa-home"></i></a></li>
				</ul>
			</nav>
			<!-- ################################################################################################ -->
		</footer>
	</div>
	<!-- JAVASCRIPTS -->
	<script src="../assets/scripts/jquery.min.js"></script>
	<script src="../assets/scripts/jquery.backtotop.js"></script>
	<script src="../assets/scripts/jquery.mobilemenu.js"></script>
</body>
</body>
</html>